# Sensor-ADC-DAC-Firmware
## Firmware para C8051F040
Elabore um firmware para ler periodicamente, e armazenar, a temperatura ambiente medida por um sensor LM35, conectado ao canal 0 do ADC0.</br>a) A IHM utilizada será a porta serial do microcontrolador, que é conectada ao PC por meio da USB serialport, permitindo ver na tela do PC as cadeias de caracteres enviadas pelo microcontrolador (usando printf_fast_f), e enviar caracteres digitados no teclado do PC para o microcontrolador. </br> b) As medidas deverão ser armazenadas na memória EEPROM do módulo didático, sendo cada temperaturaarmazenada em um único endereço da EEPROM (considere o armazenamento de temperaturas ente 0,0 C e51,0 C);</br> c) O sensor LM35 será emulado pelo DAC0, cuja saída está conectada (jumper) ao canal 0 do ADC0. </br> d) O firmware deverá aceitar os seguintes comandos pela porta serial (UART0):caractere 

### 'i': solicita a entrada do intervalo entre leituras, em segundos.
### 't': solicita a entrada da temperatura a ser emulada pelo DAC0, em graus centígrados (xx,x).
### 's': inicia o processo de leituras e armazenamento periódico.
### 'p': termina o processo de leituras e armazenamento periódico.
### 'v': visualiza todas as temperaturas armazenadas em cada endereço da EEPROM, em graus centígrados. 

</br> e) O comando ‘t’ deverá poder ser utilizado após um comando ‘s’. </br> f) Quando uma leitura periódica é realizada, ela deve ser mostrada no terminal serial. </br> g) O firmware deve utilizar um ponteiro, armazenado na própria EEPROM, para indicar o último endereçode armazenamento, de forma que ao se desligar o módulo e religá-lo, os dados armazenados possam servisualizados corretamente.
