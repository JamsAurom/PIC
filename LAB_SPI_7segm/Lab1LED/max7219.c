    /******************************************************************************/
/* Files to Include                                                           */
/******************************************************************************/

#ifdef __XC32
#include <xc.h>          /* Defines special function registers, CP0 regs  */
#endif

#include <stdint.h>          /* For uint32_t definition                       */
#include <stdbool.h>
#include <proc/p32mz2048efg100.h>         /* For true/false definition                     */
#include "user.h"           /* User funct/params, such as InitApp             */

char Spi2PutByte(char bVal);

void Delay(int n) {
    volatile int i;
    for (i=0; i<n; i++) {
    }
 }

char dg = 8;

void Clear_max (void);

void send_max(char rg, char dt)
{
    Delay(1000000);
    PORTGbits.RG9 = 0;
    Spi2PutByte(rg);
    Spi2PutByte(dt);
    PORTGbits.RG9 = 1;
}

void init_max()
{
    //PORTGbits.RG9 = 0;
    send_max(0x09,0xFF);//Set Decode mode
    send_max(0x0B,dg-1);//Set ON all digits
    send_max(0x0A,0x02);//Intensit
    send_max(0x0C,0x01);//Set Normal Operation
//    PORTGbits.RG9 = 1;
    Clear_max();
    //Delay(10);
}

void Clear_max (void)
{
    char i=dg;
    do
    {
        send_max(i,0xF);//Symbol blank
    } while (--i);
}

void INIT_SPI()
{
    char bufc;
    
    SPI2CON = 0;
    SPI2BRG = 39;
    
    bufc = SPI2BUF;
    
//    SPI2STATbits.SPIROV = 0;
    SPI2CONbits.CKP = 0;
    SPI2CONbits.CKE = 1;
    SPI2CONbits.MSTEN = 1;
    SPI2CONbits.SMP = 1;
//    SPI2CONbits.MCLKSEL = 1;
    SPI2CONbits.ON = 1;
//    SPI2CONbits.ENHBUF = 1;
//    SPI2CONbits.MODE16 = 1;
//    SPI2CONbits.MODE32 = 0;
    
    
    
//    SPI2STAT = 0x80;
    
//    SPI2BRG = 15; //8Mhz, with 80Mhz PB clock
//    SPI2STATbits.SPIROV = 0;
//    SPI2CONbits.CKE = 0;
//    SPI2CONbits.CKP = 0;
//    SPI2CONbits.MSTEN = 1;
//    SPI2CONbits.ON = 1;
    
    TRISDbits.TRISD11 = 0;
    TRISFbits.TRISF0 = 1;
    TRISGbits.TRISG6 = 0;
    TRISGbits.TRISG9 = 0;
    
     // PPR: Connect SDO2 to RPD11
    RPD11R = 6; 

    
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