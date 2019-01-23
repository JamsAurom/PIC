/* 
 * File:   max7219.h
 * Author: maksi
 *
 * Created on 6 ?????? 2019 ?., 14:53
 */

#ifndef MAX7219_H
#define	MAX7219_H


void send_max(char rg, char dt);
char Spi2PutByte(char bVal);
void init_max();
void INIT_SPI();


#ifdef	__cplusplus
}
#endif

#endif	/* MAX7219_H */

