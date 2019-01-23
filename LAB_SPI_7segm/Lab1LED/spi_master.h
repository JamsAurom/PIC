/* 
 * File:   spi_master.h
 * Author: maksi
 *
 * Created on 12 ?????? 2019 ?., 22:19
 */

#ifndef SPI_MASTER_H
#define	SPI_MASTER_H

#ifdef	__cplusplus
extern "C" {
#endif




#ifdef	__cplusplus
}
#endif

#endif	/* SPI_MASTER_H */

void INIT_SPI_max7219();

void init_max();

void Clear_max ();

void Delay(int n);

char Spi1PutByte(char bVal);

void send_max(char rg, char dt);