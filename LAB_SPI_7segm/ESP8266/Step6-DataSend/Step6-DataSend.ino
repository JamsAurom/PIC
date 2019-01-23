/*
   Шаг №6
   Передача данных из полей Web страницы

*/
#include <ESP8266WiFi.h>        //Содержится в пакете. Видео с уроком http://esp8266-arduinoide.ru/step1-wifi
#include <ESP8266WebServer.h>   //Содержится в пакете. Видео с уроком http://esp8266-arduinoide.ru/step2-webserver
#include <ESP8266SSDP.h>        //Содержится в пакете. Видео с уроком http://esp8266-arduinoide.ru/step3-ssdp
#include <FS.h>                 //Содержится в пакете. Видео с уроком http://esp8266-arduinoide.ru/step4-fswebserver
//                    ПЕРЕДАЧА ДАННЫХ НА WEB СТРАНИЦУ. Видео с уроком http://esp8266-arduinoide.ru/step5-datapages/

#include <SPI.h>

IPAddress apIP(192, 168, 4, 1);

// Web интерфейс для устройства
ESP8266WebServer HTTP(80);
// Для файловой системы
File fsUploadFile;

// Определяем переменные wifi
String _ssid     = "AMD"; // Для хранения SSID
String _password = "zmKR409_aD99.yG@FKB_t>L0ka"; // Для хранения пароля сети
String _ssidAP = "AMD1";   // SSID AP точки доступа
String _passwordAP = "123456654321"; // пароль точки доступа
String SSDP_Name = "123"; // Имя SSDP
int timezone = 2;               // часовой пояс GTM
char charBuf[500];

void setup() {
  Serial.begin(115200);
//  init_uart();
//  Serial.println("");
  //Запускаем файловую систему
//  Serial.println("Start 4-FS");
  FS_init();
//  Serial.println("Start 1-WIFI");
  //Запускаем WIFI
  WIFIinit();
  //Настраиваем и запускаем SSDP интерфейс
//  Serial.println("Start 3-SSDP");
  SSDP_init();
  //Настраиваем и запускаем HTTP интерфейс
//  Serial.println("Start 2-WebServer");
  HTTP_init();

  init_SPI();
}

void loop() {
  HTTP.handleClient();
  delay(1);
}
