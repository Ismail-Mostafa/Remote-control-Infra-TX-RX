int x;
void main() {
 trisc=0;
 trisd=0;
 portd=255;
 UART1_Init(2400);
PWM1_Init(30000);
PWM1_Set_Duty(127);
 x=20;
PWM1_Start();
 for(;;)
 {
UART1_Write(x);
delay_ms(1000);
 }
}
