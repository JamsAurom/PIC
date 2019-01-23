#ifdef __XC32
#include <xc.h>          /* Defines special function registers, CP0 regs  */
#endif

#include <stdint.h>          /* For uint32_t definition                       */
#include <stdbool.h>
#include <proc/p32mz2048efg100.h>
#include <proc/p32mz2048efg100.h>         /* For true/false definition                     */
#include "user.h"           /* User funct/params, such as InitApp             */


void INIT_SPI_slave()
{
    char bufc;
    
    SPI2CON = 0;
//    SPI2BRG = 39;
    
    bufc = SPI2BUF;
    
    SPI2CONbits.ENHBUF = 0;
    SPI2STATbits.SPIROV = 0;
    SPI2CONbits.CKP = 0;////////////////////////EEEEERRRRRRRRROOOOOOOOOORRRRRRRRRRR+
    SPI2CONbits.CKE = 0;////////////////////////EEEEERRRRRRRRROOOOOOOOOORRRRRRRRRRR+
    SPI2CONbits.MSTEN = 0;//+
    SPI2CONbits.SMP = 0;//+
    SPI2CONbits.SSEN = 1;
//    SPI2CONbits.STXISEL = 01;
//    SPI2CONbits.STXISEL = 01;
    
    SPI2CONbits.ON = 1;
    
    TRISDbits.TRISD11 = 1;
    TRISFbits.TRISF0 = 0;
    TRISGbits.TRISG6 = 1;
    TRISGbits.TRISG9 = 1;
    
     // PPR: Connect SDO2 to RPD11
//    RPD11R = 6; 
//    RPG9R = 6;
    
    SDI2R = 3;
    SS2R = 1;

    
    PORTGbits.RG9 = 1;
    
    Delay(500);
}

char Spi2PutByte(char bVal)
{
//    PORTGbits.RG9 = 0;
    char bRx;
    /* Wait for transmitter to be ready
    */
    while (SPI2STATbits.SPITBE == 0);
    /* Write the next transmit byte.
    */
    SPI2BUF = bVal;
    /* Wait for receive byte.
    */
    while (SPI2STATbits.SPIRBF == 0);
    /* Put the received byte in the buffer.
    */
    bRx = SPI2BUF;
//    PORTGbits.RG9 = 1;
    return bRx;
}
