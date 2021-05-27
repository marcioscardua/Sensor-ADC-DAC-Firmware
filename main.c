/*
Autor: Marcio Scardua

O programa trunca os valores de 0.0C a 51.0C para poderem ser representados 
em 1byte

Usou-se a tensao de referencia interna no uC para representar a temperatura
4096    / 256
MAX DAC / MAX TEMP
*/
#include <stdio.h>
#include "def_pinos.h"
#include "config.c"

#define R 1
#define W 0
#define EEPROM 0xA0

volatile __bit fbr = 0;
volatile __bit flag1 = 0; // temp ou intervalo
volatile __bit flag2 = 0; // input com numero


float input_numerico = 0; //variavel da temperatura e intervalo
float temp = 0;
float temp_dac = 0;

unsigned int intervalo = 1;
unsigned int segundos = 0;
unsigned int m_segundos = 0;
unsigned int contador =0;
unsigned int vetor[3];

unsigned char posicao = 1; //posicao na memoria
unsigned char ponteiro; // salva a ultima posicao
unsigned char x = 0;
unsigned char tamanho = 0;
unsigned int i = 0;
unsigned char j = 0;

void escreve_dac0(float temp){
	unsigned int dac;
	dac = temp*16.0;
	DAC0L = dac;
	DAC0H = dac >> 8;
}

unsigned char transf_numero(unsigned char input){
		switch(input){
				case '0':		
					return 0;
				case '1':
					return 1;		
				case '2':
			    	return 2;
				case'3': 
					return 3;
				case '4':
					return 4;
				case '5':
					return 5;
				case '6':
					return 6;
				case '7':
					return 7;
				case '8':
					return 8;
				case '9':
					return 9;
				default:
					return 100;
		}
}


void interrupcao_serial(void) __interrupt 4{
	if(RI0 == 1){
		fbr = 1;
		RI0 = 0;
		if(flag2 || flag1){	// intervalo
			if(SBUF0 == 46){ // ponto digitado
				flag1 = 1;	
			}
			if(SBUF0 >= 48 && SBUF0 <= 57){ //verifica se e numero
				cria_vetor();
			}
			if(SBUF0 == 0x0D){
				cria_numero();
				flag2 = 0;
				flag1 = 0;
				x = 0;
				tamanho = 0;			
			}				
		}		
	}
}

unsigned char escreve_byte_controle(unsigned char endereco_dispositivo, __bit RW){

	STA = 1; // Gera condicao de Start
	SI = 0; 
	while(SI == 0); // Quando sair o Status mudou
	if(SMB0STA != 0x08 && SMB0STA != 0x10){
		return (SMB0STA);
	}
	SMB0DAT = ( endereco_dispositivo & 0xfe) | RW; // Modelo o COntrol Byte
	STA = 0; //
	SI = 0;
	while(SI == 0); // Sai quando houver mudanca no status	
	if(RW == W){ //verifica se e escrita	
		if(SMB0STA != 0x18){ // 0x18 ack recebido em escrita		
			return (SMB0STA);			
		}
	}else{
		if(SMB0STA != 0x40){ // 0x40 ack rebecido em leitura
			return (SMB0STA);
		}
	}	
	return (0);

}
unsigned char escreve_byte_dados(unsigned char dado){
	SMB0DAT = dado;
	SI = 0;
	while(SI == 0);
	if(SMB0STA != 0x28){ // 0x28 byte de dados transmitido e ack recebido	
		return (SMB0STA);
	}
	return (0);
}

void putchar(char c){
    SBUF0 = c;
    while(TI0 == 0); 
    TI0 = 0;
}
void Timer4_ISR (void) interrupt 16{
	SMB0CN &= ~0x40;  // Desabilita SMBus
	SMB0CN |= 0x40;   // Habilita SMBus
	TF4 = 0;  
}

int escreve_eeprom(unsigned char endereco, unsigned char dados){	
	if(!escreve_byte_controle(EEPROM, W)){
		if(escreve_byte_dados(endereco) == 0 ){
			if(escreve_byte_dados(dados) == 0){		
				STO = 1;
				SI = 0;
				while(STO == 1);		
				while(escreve_byte_controle(EEPROM, W) != 0){			
					escreve_byte_controle(EEPROM, W);
				}				
				return (0);							
			}
		}
	}
	return (SMB0STA);

}

unsigned char leitura_eeprom(unsigned char endereco){
	if(!escreve_byte_controle(EEPROM, W) ){
		if(escreve_byte_dados(endereco) == 0 ){
			if(escreve_byte_controle(EEPROM, R) == 0){	
				AA = 0;
				SI = 0;
				while(SI == 0);		
				STO = 1;
				SI = 0;
				while(STO == 1);								
			}			
		}	
	}
	return (SMB0DAT);
}
void print_vetor(void){
	for(i = 0; i < tamanho; i++){
		printf_fast_f("%u", vetor[i]);	
	}
	printf_fast_f("\n");
}

void cria_numero(void){
	unsigned int mult =  1;	
	for(i = 0 ; i < tamanho-1; i++){
		mult *= 10;		
	}	

	for(i = 0; i < tamanho; i++){
		input_numerico += vetor[i]*mult;
		mult /= 10	;		
	}
	if(flag1){// se for temperatura
		input_numerico /= 10;
		temp = input_numerico;
		escreve_dac0(temp*5.0); // escreve a temperatura no DAC
		printf_fast_f("\nTemp. Definida: %2.1f \n", temp);
	}
    else if(flag2){//se for intervalo
		intervalo = input_numerico;
		printf_fast_f("\nIntervalo Definido: %u \n", intervalo);
	}
	
}
void cria_vetor(void){
	input_numerico = 0;	
	if(x >= 3){
		printf_fast_f("Numero Excedido\n");
	}	
	if(x <= 2){
		vetor[x] = transf_numero(SBUF0);
		x++;
		tamanho += 1;
	}
}
/*
Funcao responsavel por definir as interrupcoes baseados no intervalor inserido
Por padrão o intervalo e 1s, podendo ser alterado em tempo de execução
Nessa funcao e feito a leitura do ADC e a escrita na EEPROM
*/
void contador_func(void) __interrupt 5{	
	contador++;
		if(contador == 250){
			m_segundos += 1;
			if(	m_segundos == intervalo*1000){		
					segundos += 1;
					temp_dac = le_adc0()/(16.0*5.0); //leitura do adc
					printf_fast_f("Leitura ADC0: %2.1fC \n", temp_dac);		
					if(posicao == 1){ //restaura posicao antiga
						if(leitura_eeprom(0) != 1){
							posicao = leitura_eeprom(0) + 1; //valor da ultima leitura 
						}
					}
					if(posicao > 127){
						posicao = 1;
					}
					escreve_eeprom(posicao, temp_dac*5); //escreve na memoria
					escreve_eeprom(0, posicao); //escreve referencia
					posicao++;
					m_segundos = 0;
			}
		contador = 0;
		}
	
}
unsigned int le_adc0(void){
	ADC0CF = (ADC0CF & 0xf8) | 0;
	AMX0SL = 0;
	AD0BUSY = 1;
	while(!AD0INT);
	return(ADC0H << 8 | ADC0L);
}

void show_memoria(void){
	j = leitura_eeprom(0);
	for(i = 1 ;  i<= j; i++){
			printf_fast_f("End: %d Temp: %f \n",i, leitura_eeprom(i)/5.0);
	}
}
void main(void){
    Init_Device();
    SFRPAGE = LEGACY_PAGE;
	TR2=0;	
	while(1){
		if(fbr == 1){
			fbr = 0;
			switch(SBUF0){
				case 'i'://solicita entrada do intervalo
					flag2 = 1;				
					printf_fast_f("Informe o tempo (s) do intervalo entre leituras: ");				
					break;

				case 't'://solicita temperatura
					flag1 = 1;
					printf_fast_f("Informe a temperatura (xx.x) a ser emulada: ");
					break;

				case 's': //inicia processo de leitura e armazenamento
					printf_fast_f("Inicio da Rotina \n");
					contador=0;
					TR2=1;//inicializa timer2
					TF2 = 0;		
					break;

				case'p': //termina o processo de leitura e armazenamento
					printf_fast_f("Parado\n");
					TR2=0; // Encerro o timer2
					TF2 = 0;
					break;

				case 'v'://Mostra a memoria
					show_memoria();
					break;
			}
		}	
		
	}

}