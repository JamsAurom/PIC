/******************************************************************************/
/*  Files to Include                                                          */
/******************************************************************************/
#ifdef __XC32
    #include <xc.h>          /* Defines special function registers, CP0 regs  */
#endif

#include <stdint.h>         /* For uint32_t definition                        */
#include <stdbool.h>        /* For true/false definition                      */

//#include "system.h"         /* System funct/params, like osc/periph config    */
#include "user.h"           /* User funct/params, such as InitApp             */
//#include "max7219.h"
#include "spi_master.h"
#include "UART.h"

char d[8];

void init_rah()
{
    int i = 0;
    for(i = 0; i < 8; i++)
    {
        d[i] = 0;
    }
}

void rah()
{
    d[0]++;
    if(d[0] == 10) 
    {
        d[0] = 0;
        d[1]++;
        if(d[1] == 10) 
        {
            d[1] = 0;
            d[2]++;
            if(d[2] == 10) 
            {
                d[2] = 0;
                d[3]++;
                if(d[3] == 10) 
                {
                    d[3] = 0;
                    d[4]++;
                    if(d[4] == 10) 
                    {
                        d[4] = 0;
                        d[5]++;
                        if(d[5] == 10) 
                        {
                            d[5] = 0;
                            d[6]++;
                            if(d[6] == 10) 
                            {
                                d[6] = 0;
                                d[7]++;
                            }
                        }
                    }
                }
            }
        }
    }
     
    send_max(0x1,d[0]);//1
    send_max(0x2,d[1]);//2
    send_max(0x3,d[2]);//3
    send_max(0x4,d[3]);//4
    send_max(0x5,d[4]);//5
    send_max(0x6,d[5]);//6
    send_max(0x7,d[6]);//7
    send_max(0x8,d[7]);//8
    Delay(10000);
}

int main(void)
{
    INIT_SPI_max7219();
//    InitApp();
    init_max();
    INIT_SPI_slave();
    UART1_init();
    init_rah();
    
    
    char cTemp;
    
//    send_max(0x1,0x1);//1
//    send_max(0x2,0x2);//2
//    send_max(0x3,0x3);//3
//    send_max(0x4,0x4);//4
//    send_max(0x5,0x5);//5
//    send_max(0x6,0x6);//6
//    send_max(0x7,0x7);//7
//    send_max(0x8,0x8);//8

    char t[8];
    int i;
    
    while(1)
    {
        i = 0;
        
        for(i; i < 8; i++)
        {
            t[i] = 0xF;
        }
        UART1_gets(t);
        //Delay(2000);
//        UART1_putc('5');
//        rah();
        i = 0;
        Clear_max();
//        Delay(100);
        for(i; i < 8; i++)
        {
            if(t[7 - i] != 0xF)
            send_max(i + 1,t[7 - i] - 48);
        }
        UART1_putc('Y');
//        Delay(2000000);
    }
    return 0;
}
