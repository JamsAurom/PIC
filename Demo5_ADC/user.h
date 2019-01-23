/******************************************************************************/
/* User Level #define Macros                                                  */
/******************************************************************************/

// Add I/O name macros here
#define LD1_PORT_BIT        LATGbits.LATG6
#define LD2_PORT_BIT        LATDbits.LATD4
#define LD3_PORT_BIT        LATBbits.LATB11
#define LD4_PORT_BIT        LATGbits.LATG15

#define LED0_PORT_BIT       LATFbits.LATF2
#define LED1_PORT_BIT       LATFbits.LATF8
#define LED2_PORT_BIT       LATEbits.LATE8
#define LED3_PORT_BIT       LATDbits.LATD0
#define LED4_PORT_BIT       LATAbits.LATA3
#define LED5_PORT_BIT       LATDbits.LATD1
#define LED6_PORT_BIT       LATDbits.LATD2
#define LED7_PORT_BIT       LATEbits.LATE9
#define LED8_PORT_BIT       LATAbits.LATA14
#define LED9_PORT_BIT       LATDbits.LATD3

#define BTN1_PORT_BIT       PORTAbits.RA5
#define BTN2_PORT_BIT       PORTAbits.RA4

/* TODO Application specific user parameters used in user.c may go here */
#define SLOW_DELAY          10000000
#define FAST_DELAY          300000

#define VR1_AN_CHAN_NUM (10)

/******************************************************************************/
/* User Function Prototypes                                                    /
/******************************************************************************/

/* TODO User level functions prototypes (i.e. InitApp) go here */

void InitApp(void);         /* I/O and Peripheral Initialization */

void Flash_LED(void);
void Scan_LEDs(void);
