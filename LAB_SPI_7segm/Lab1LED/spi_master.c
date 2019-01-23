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
#include "spi_master.h"

#define dg 8

void INIT_SPI_max7219()
{
    char bufc;
    
    SPI1CON = 0;
    SPI1BRG = 39;
    
    bufc = SPI1BUF;
    
    SPI1CONbits.CKP = 0;
    SPI1CONbits.CKE = 1;
    SPI1CONbits.MSTEN = 1;
    SPI1CONbits.SMP = 1;
    SPI1CONbits.ON = 1;
        
    TRISEbits.TRISE5 = 0;
    TRISEbits.TRISE4 = 1;
    TRISDbits.TRISD1 = 0;
    TRISEbits.TRISE6 = 0;
    
    RPE5R = 5; 

    
    PORTEbits.RE6 = 1;
    
    Delay(500);
}

void init_max()
{
    int i = 0;
    for(i = 0; i < 4; i++)
    {
        send_max(0x0F,0x00);
        send_max(0x09,0xFF);//Set Decode mode
        send_max(0x0B,dg-1);//Set ON all digits
        send_max(0x0A,0x0D);//Intensit
        send_max(0x0C,0x01);//Set Normal Operation
        Clear_max();
    }
}

void Clear_max ()
{
    char i=dg;
    do
    {
        send_max(i,0xF);//Symbol blank
    } while (--i);
}

void Delay(int n) {
    volatile int i;
    for (i=0; i<n; i++) {
    }
}

char Spi1PutByte(char bVal)
{
//    PORTGbits.RG9 = 0;
    char bRx;
    /* Wait for transmitter to be ready
    */
    while (SPI1STATbits.SPITBE == 0);
    /* Write the next transmit byte.
    */
    SPI1BUF = bVal;
    /* Wait for receive byte.
    */
    while (SPI1STATbits.SPIRBF == 0);
    /* Put the received byte in the buffer.
    */
    bRx = SPI1BUF;
//    PORTGbits.RG9 = 1;
    return bRx;
}

void send_max(char rg, char dt)
{
    Delay(10);
    PORTEbits.RE6 = 0;
    Spi1PutByte(rg);
    Spi1PutByte(dt);
    PORTEbits.RE6 = 1;
}
