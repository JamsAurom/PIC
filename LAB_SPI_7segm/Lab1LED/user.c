/******************************************************************************/
/* Files to Include                                                           */
/******************************************************************************/

#ifdef __XC32
    #include <xc.h>          /* Defines special function registers, CP0 regs  */
#endif

#include <stdint.h>          /* For uint32_t definition                       */
#include <stdio.h>          /* For uint32_t definition                       */
#include <stdbool.h>         /* For true/false definition                     */
#include "user.h"            /* variables/params used by user.c               */
#include <sys/attribs.h>


void InitApp(void) {
    /* Setup functionality and port direction */
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

    // Turn off LEDs for initialization
    LD1_PORT_BIT = 0;
    LD2_PORT_BIT = 0;
    LD3_PORT_BIT = 0;
    LD4_PORT_BIT = 0;

    // Button inputs
    // Disable analog mode
    ANSELAbits.ANSA5 = 0;
    // Set directions to input
    TRISAbits.TRISA5 = 1;
    TRISAbits.TRISA4 = 1;

//    ANSELDbits.ANSD0 = 0;
    TRISDbits.TRISD0 = 0;
}
//void InitApp(void)
//{
//        // Button input
//    // Disable analog mode
//	ANSELAbits.ANSA5 = 0;
//	ANSELGbits.ANSG6 = 0;
//	ANSELGbits.ANSG15 = 0;  
////    ANSELBbits.ANSB11 = 0;
//   
//    // Set directions to input
//    TRISAbits.TRISA5 = 1;
//    // Set direction to output
//    TRISGbits.TRISG15 = 0;
//    TRISGbits.TRISG6 = 0;
// //   TRISBbits.TRISB11 = 0;
//    
//    // LED off
//    LATGbits.LATG15 = 0;
//    LATGbits.LATG6 = 0;
// //   LATBbits.LATB11 = 0;
//    
//    ANSELDbits.ANSD0 = 0;
//    TRISDbits.TRISD0 = 0;
//}

void Delay(uint32_t n) {
    volatile uint32_t i;
    for (i=0; i<n; i++) {
    }
 }

//congruent generator of pseudo-random numbers
static uint32_t X = 0; //RAND_SEED    
static inline uint32_t _random(void) {
    const uint32_t a = 33, c = 499;
    return ( X = X * 33 + 499 ); 
}

uint32_t get_density_c(void){

	uint32_t r_val = _random() % 100;
	//printf ("%d, ", r_val);
        
        if (r_val >= 52) {
            return 100;
        }
            
        else if (r_val >= 48) {
             return 95;
        }
        else if (r_val >= 43) {
             return 90;
        }
        
        else if (r_val >= 39) {
             return 85;
        }
        
        else if (r_val >= 34) {
             return 80;
        }
        
        else if (r_val >= 30) {
             return 75;
        }
  
   
        else if (r_val >= 24) {
             return 70;
        }
    
        else if (r_val >= 19) {
            return 65;
        }
    
        else if (r_val >= 16) {
            return 60;
        }
    
        else if (r_val >= 12) {
            return 55;
        }
    
        else if (r_val >= 9) {
            return 50;
        }
    
        else if (r_val >= 7) {
            return 45;
        }
    
        else if (r_val >= 5) {
            return 40;
        }
    
        else if (r_val >= 3) {
            return 35;
        }
     
        else if (r_val >= 0) {
            return 30;
        }
    
/*useless code*/
//*************//
    
}

//how long it is in seconds
const uint32_t T = 10000; //frequency = 80 MHz
void pwm (uint32_t delay_on){
    
    LATDbits.LATD0 = 1;
    LATGbits.LATG6 = 1; // Turn on LED
    LATGbits.LATG15 = 1; // Turn on LED
    Delay(delay_on);
    
    LATDbits.LATD0 = 0;
    LATGbits.LATG6 = 0; // Turn off LED
    LATGbits.LATG15 = 0; // Turn off LED
    Delay(T - delay_on);
    return;
}

void candle(void) {  
    
    uint32_t delay_on;// = 0.5 * T;
    
    volatile uint32_t i;
    for(i = 0; i < 1000 ; i ++){
        
        delay_on = get_density_c() / 100 * T; // for values in range 1-10, think about it
        pwm(delay_on);
    }
    return;
}

void Flash_LED(void) {
   
    // parameters for pwm
    uint32_t dt = 10;
    uint32_t T = 5000;
    uint32_t delay_on = 0.5 * T;
    
    volatile uint32_t i;
    for(i = 0; i < 1000 ; i++){  
        pwm(delay_on); 

    // our effect
        if ( delay_on + dt >= T || delay_on + dt <= 0){
            dt *= -1;
        }
        delay_on  += dt;
    }
    //printf("Uffgh, I'm tired...");
}