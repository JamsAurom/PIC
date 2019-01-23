//#include <ESP8266WiFi.h>

//void init_uart()
//{
//  Serial.begin(115200);
////  uart.on(0);
//}

void send_data_uart(char* data)
{
  int i = 0;
  while(data[i] != 0)
  {
    Serial.print(data[i]);
    i++;
  }
  Serial.print('E');
}
