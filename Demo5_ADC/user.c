/******************************************************************************/
/* Files to Include                                                           */
/******************************************************************************/

#ifdef __XC32
#include <xc.h>          /* Defines special function registers, CP0 regs  */
#endif

#include <stdint.h>          /* For uint32_t definition                       */
#include <stdbool.h>         /* For true/false definition                     */
#include <stdlib.h>
#include "user.h"            /* variables/params used by user.c               */
#include "ADC.h"

/******************************************************************************/
/* User Functions                                                             */

void LED_on(int n);

/******************************************************************************/


void InitGPIO(void) {
    /* Setup functionality and port direction */
    // Enable analog input for potentiometer (AN8 on pin RB13)
//    ANSELBbits.ANSB13 = 1;
    ANSELBbits.ANSB15 = 1;
    // LED output
    // Disable analog mode
    ANSELGbits.ANSG6 = 0;
    ANSELBbits.ANSB11 = 0;
    ANSELGbits.ANSG15 = 0;
    // Set directions to output
    TRISGbits.TRISG6 = 0;
    TRISBbits.TRISB11 = 0;
    TRISGbits.TRISG15 = 0;
    TRISDbits.TRISD4 = 0;
    
    TRISFbits.TRISF2 = 0;
    TRISFbits.TRISF8 = 0;
    TRISEbits.TRISE8 = 0;
    TRISDbits.TRISD0 = 0;
    TRISAbits.TRISA3 = 0;
    TRISDbits.TRISD1 = 0;
    TRISDbits.TRISD2 = 0;
    TRISEbits.TRISE9 = 0;
    TRISAbits.TRISA14 = 0;
    TRISDbits.TRISD3 = 0;
    
    // Turn off LEDs for initialization
    LD1_PORT_BIT = 0;
    LD2_PORT_BIT = 0;
    LD3_PORT_BIT = 0;
    LD4_PORT_BIT = 0;
    
    LED0_PORT_BIT = 0;
    LED1_PORT_BIT = 0;
    LED2_PORT_BIT = 0;
    LED3_PORT_BIT = 0;
    LED4_PORT_BIT = 0;
    LED5_PORT_BIT = 0;
    LED6_PORT_BIT = 0;
    LED7_PORT_BIT = 0;
    LED8_PORT_BIT = 0;
    LED9_PORT_BIT = 0;
    // Button inputs
    // Disable analog mode
    ANSELAbits.ANSA5 = 0;
    // Set directions to input
    TRISAbits.TRISA5 = 1;
    TRISAbits.TRISA4 = 1;
}

void InitApp(void) {
    InitGPIO();
    initWiFIREadc();
}

void Delay(int n) {
    volatile int i;
    for (i = 0; i < n; i++) {
    }
}

void Scan_LEDs(void) {
    int LED_state = 1; // 1 on (initial value), 0 off
    int delay_count, rando, max_prev;
    double col;
    
    while (1) {
        // delay_count = ReadPotentiometerWithADC()*1000 + 300000;
        //delay_count = ReadPotentiometerWithADC()*1000 + 300000;
        
        delay_count = ReadPotentiometerWithADC();
        
//        LD1_PORT_BIT = LED_state;
//        Delay(delay_count);
//        LD3_PORT_BIT = LED_state;
//        Delay(delay_count);
//        LD2_PORT_BIT = LED_state;
//        Delay(delay_count);
//        LD4_PORT_BIT = LED_state;
//        Delay(delay_count);
//        
        col = (double)delay_count / (double)4096;
        
        if(col < 0.54 && col > 0.4) {
            LED_on(0);
        }
        else if(col < 0.62 && col > 0.4) {
            LED_on(1);
        }
        else if(col < 0.68 && col > 0.4) {
            LED_on(2);
        }
        else if(col < 0.73 && col > 0.4) {
            LED_on(3);
        }
        else if(col < 0.77 && col > 0.4) {
            LED_on(4);
        }
        else if(col < 0.80 && col > 0.4) {
            LED_on(5);
        }
        else if(col < 0.83 && col > 0.4) {
            LED_on(6);
        }
        else if(col < 0.85 && col > 0.4) {
            LED_on(7);
        }
        else if(col < 0.88 && col > 0.4) {
            LED_on(8);
        }
        else if(col > 0.88 && col > 0.4) {
            LED_on(9);
        }
        
        

        
        
        Delay(1000000);
        //LED_state = 1 - LED_state; // next time, set LEDs to opposite state
    }
}

void LED_on(int n)
{
    LED0_PORT_BIT = 0;
    LED1_PORT_BIT = 0;
    LED2_PORT_BIT = 0;
    LED3_PORT_BIT = 0;
    LED4_PORT_BIT = 0;
    LED5_PORT_BIT = 0;
    LED6_PORT_BIT = 0;
    LED7_PORT_BIT = 0;
    LED8_PORT_BIT = 0;
    LED9_PORT_BIT = 0;
    int i = 0;
    for(i; i <= n; i++)
    {
        switch(i)
        {
            case 0:
                LED9_PORT_BIT = 1;
                break;
            case 1:
                LED8_PORT_BIT = 1;
                break;
            case 2:
                LED7_PORT_BIT = 1;
                break;
            case 3:
                LED6_PORT_BIT = 1;
                break;
            case 4:
                LED5_PORT_BIT = 1;
                break;
            case 5:
                LED4_PORT_BIT = 1;
                break;
            case 6:
                LED3_PORT_BIT = 1;
                break;
            case 7:
                LED2_PORT_BIT = 1;
                break;
            case 8:
                LED1_PORT_BIT = 1;
                break;
            case 9:
                LED0_PORT_BIT = 1;
                break;
        }
    }
}