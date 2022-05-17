#line 1 "D:/phone/my courses/3rd power/2ed term/Microprocessors/projects/code/project2/MyProject.c"


sbit LCD_RS at RD2_bit;
sbit LCD_EN at RD3_bit;
sbit LCD_D4 at RD4_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D7 at RD7_bit;

sbit LCD_RS_Direction at TRISD2_bit;
sbit LCD_EN_Direction at TRISD3_bit;
sbit LCD_D4_Direction at TRISD4_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D7_Direction at TRISD7_bit;


char keypadPort at PORTB;

int i;
int password[3];
int j, k = 0;

char get_password()
{
 Loop:
 lcd_cmd(_LCD_CLEAR);
 lcd_out(1,1,"Enter Password:");
 for(i=0;i<3;i++)
 {
 while(password[i]==0)
 {
 password[i]=Keypad_Key_Click();
 }
 switch(password[i]){
 case 1 : password[i]= 7; break;
 case 2 : password[i]= 8; break;
 case 3 : password[i]= 9; break;
 case 5 : password[i]=4; break;
 case 6 : password[i]=5; break;
 case 7 : password[i]=6; break;
 case 9 : password[i]=1; break;
 case 10 : password[i]=2; break;
 case 11 : password[i]=3; break;
 case 14 : password[i]=0; break;
 }

 Lcd_Chr(2,i+1,'*');
 }

 for (j = 0; j < 3; j++)
 k = 10 * k + password[j];

 if(k==123)
 return 1;
 else
 {
 password[0]=0;
 password[1]=0;
 password[2]=0;
 k=0;
 lcd_cmd(_LCD_CLEAR);
 Lcd_out(1,1,"Not correct");
 delay_ms(2000);
 goto Loop;
 }

}
void main() {
 trisc.b0=0;
 portc.b0=0;

 Lcd_init();
 keypad_init();

 Lcd_cmd(_LCD_CURSOR_OFF);
 get_password();

 Lcd_cmd(_LCD_CLEAR);
 lcd_out(1,5,"Welcome :)");

while(1)
{
portc.b0= ~ portc.b0;
delay_ms(1000);
}

}
