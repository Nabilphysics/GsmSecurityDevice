/*Device command Set:
  Default command keywords: NEWPASS,,BALANCE,,CONFIG,,
  Check device configuration:- format: command
                                       CONFIG
  Change device configuration:- format: password(space)new_number1(Space)alert_mode
                                        0000 +8801742975218 A
                                        A=both call & sms/ S=sms only/ C=call only
  Change device password:- format: command(space)old_password(space)new_password
                                   PASSCHANGE 0000 9999
  Device Reset : Press Reset(D4) + Config (D2)
  Check device balance:-
        Account balance check: format: command(space)balance_USSD_code
                                       BALANCE *566#
        Normal SMS balance: format: command(space)SMS_balance_USSD_code
                                    BALANCE *566*2#
  SMS pack/flexiplan SMS pack : format: command(space)SMS_pack_balance_USSD_code
*/
/*
  https://www.arduino.cc/reference/en/language/variables/utilities/progmem/
*/
/*
 * Credit:
 * Team Lead, Research & Part of the code
 *    Syed Razwanul Haque Nabil, https://www.nabilbd.com, https://www.github.com/Nabilphysics
 *    Founder, https://www.cruxbd.com
 *    
 * Head of Enginnering: Coding, 3D Design, PCB Design
 * Hasan Sohag, Lead PCB & Mechanical Design Engineer, https://www.cruxbd.com
 * 
 */

#include <EEPROM.h>
#include <string.h>

#define setupPin PD2
#define dataResetPin PD4
#define lowVoltLed PD5
#define medVoltLed PD6
#define highVoltLed PD7

char pass[6];                     //device password, password must have 5 character always
char newString[160];
char user_num[15];                  //phone number for sending sms
char mode;
byte i = 0;
bool oneTime = true;

void setup()
{
  analogReference(EXTERNAL);
  DDRD |= (0 << setupPin); //D2 Input  Device Setup
  DDRD |= (0 << dataResetPin); //D4 Input  Data Reset

  DDRD |= (1 << lowVoltLed); // D5 OUTPUT LOW Volt
  DDRD |= (1 << medVoltLed); // D6 OUTPUT Medium Volt
  DDRD |= (1 << highVoltLed); // D7 OUTPUT HIGH Volt

  PORTD |= ( 1 << setupPin);  // D2 Input PullUp
  PORTD |= ( 1 << dataResetPin);  // D4 Input PullUp


  Serial.begin(9600);
  delay(5000);// Very Important Delay. Its remove unwanted data at begining
  configDataGet();
  delay(100);
  voltRead();
}

void loop()        //main loop
{
  if (((PIND & (1 << dataResetPin)) == 0) && ((PIND & (1 << setupPin)) == 0)) dataReset(); //D4 to GND
  else if ((PIND & (1 << setupPin)) == 0) deviceSetupMode();   //D2 to GND for Setup
  else if ((PIND & (1 << setupPin)) && (oneTime == true)) //(PIND & (1 << setupPin))
  {
    oneTime = false;
    switch (mode) {
      case 'A':
        for (i = 0; i < 2; i++) {
          if (i == 0) {
            delay(5000);
            blinkLed(100, 5);
            sendSMS("Security Warning!");
            delay(5000);
          }
          makeCall();
          blinkLed2(500, 1);
        }
        break;
      case 'S':
        delay(5000);
        blinkLed(100, 5);
        sendSMS("Security Warning1!");
        delay(5000);
        break;
      case 'C': for (i = 0; i < 2; i++) {
          makeCall();
          blinkLed2(500, 1);
        }
        break;
    }
  }
}

/////////////////////////////////////////////////////////////

void deviceSetupMode() //enter setting mode, while pin D2 is LOW
{
  if (Serial.available() > 0 && ((PIND & (1 >> setupPin)) == 0))
  {
    String tempString = Serial.readStringUntil('\n');
    tempString.trim();
    byte len = tempString.length();
    tempString.toCharArray(newString, len + 1);
    char temp[30] = "";
    strcat(temp, "PASSCHANGE ");//PASSCHANGE
    strcat(temp, pass);
    char temp1[200] = "";

    if (stringCompare(newString, "CONFIG") == 1)dataShow();  //command for showing device configuration

    else if (stringCompare(newString, "+CUSD: 0") == 1 || stringCompare(newString, "+CUSD: 1") == 1)
    {
      blinkLed(100, 5);
      for (i = 10; i < strlen(newString) - 5; i++) temp1[i - 10] = newString[i];
      delay(100);
      sendSMS(temp1);
    }           //+CUSD: 0,"Balance Tk5.19 Valid 25-01-2018;",15

    else if (stringCompare(newString, "BALANCE") == 1) balance();

    else  if (stringCompare(newString, pass) == 1) configDataChange();

    else  if (stringCompare(newString, temp) == 1) devicePassChange();

  }
}


void  configDataGet()                     //function for reading config data from EEPROM, while device is started
{
  for (i = 0; i < 4; i++)         //mining user data from EEPROM
  {
    pass[i] = EEPROM.read(i);     //reading data from EEPROM
    delay(10);
  }

  for (i = 5; i < 19; i++)         //mining user data from EEPROM
  {
    user_num[i - 5] = EEPROM.read(i); //reading data from EEPROM
    delay(10);
  }
  mode = EEPROM.read(20);  //reading mode for call or sms
}

void configDataChange()                       //function for changing config data, while pass is entered
{
  for (i = 5; i < 21; i++)
  {
    EEPROM.write(i, newString[i]);      //writing config data on EEPROM
    delay(10);
  }
  dataShow();
  blinkLed(100, 5);
}

void devicePassChange()
{
  for (i = 0; i < 4; i++)
  {
    EEPROM.write(i, newString[i + 16]); //replacing the old password with the new one in EEPROM
    delay(10);
  }
  configDataGet();
  blinkLed(100, 5);
}

void dataShow() //function for showing configuration data
{
  blinkLed(100, 5);
  char data[100] = "";
  strcat(data, "\nConfig:\nPW: ");
  strcat(data, pass);           //construct the configuration data string to send via SMS
  strcat(data, "\nNO: ");       //format:  strcat( main_string-array , string-array_to_add )
  strcat(data, user_num);

  switch (mode) {
    case 'A': strcat(data, "\nMode-A:Call+SMS");
      break;
    case 'S': strcat(data, "\nMode-S:SMS");
      break;
    case 'C': strcat(data, "\nMode-C:Call");
      break;
  }
  strcat(data, "\nCharge: ");
  char x[3];
  itoa(voltRead(), x, 10); //c function to convert char
  strcat(data, x);
  strcat(data, "%");
  delay(100);
  sendSMS(data);
}


void makeCall()
{
  blinkLed(100, 5);
  delay(500);
  Serial.print(F("ATD"));
  Serial.print(user_num);
  Serial.println(";");
  delay(25000);
  Serial.println(F("ATH")); //end the call
  delay(500);
}


void sendSMS(char text[])
{
  textMode();         //Sets the Serial Module in Text Mode
  delay(500);
  Serial.print(F("AT+CMGS=\""));
  delay(500);
  Serial.print(user_num);
  delay(500);
  Serial.println("\""); //command to send SMS.'user_num' is the string of the mobile number
  delay(500);
  Serial.print(text); // The SMS text you want to send
  delay(500);
  Serial.write(0x1A); // ASCII code of CTRL+Z
  delay(500);
}


void balance()
{
  blinkLed(100, 5);
  textMode();
  Serial.print(F("AT+CUSD=1,\""));
  for (i = 8; i < strlen(newString); i++) Serial.print(newString[i]);
  Serial.println(F("\",15"));  //command to dial USSD code
  delay(1000);
}


void readSMS()
{
  textMode();
  Serial.println(F("AT+CNMI=2,2,0,0,0"));   //Set Serial module for receving SMS
  delay(500);
}


void textMode() {
  delay(500);
  Serial.println(F("AT+CMGF=1"));
  delay(500);
  Serial.println(F("AT+CSCS=\"GSM\""));
  delay(500);
}


byte stringCompare(char str1[], char str2[])
{
  for (i = 0; i < strlen(str2); i++)
  {
    if (str1[i] != str2[i])return 0;
  }
  return 1;
}


byte voltRead() {
  float voltage = (analogRead(A0) * (2.50 / 1023.0)) * 2;
  delay(100);
  if (voltage < 3.5) voltage = 3.5;
  if (voltage > 4.2) voltage = 4.2;
  byte percentVolt = (voltage - 3.5) / 0.007 ;    // percentage=(highvoltage-lowvoltage)*
  PORTD &= ~(1 << highVoltLed); //LOW
  PORTD &= ~(1 << medVoltLed); //LOW
  PORTD &= ~(1 << lowVoltLed); //LOW
  if ((percentVolt < 101) && (percentVolt > 70)) {
    PORTD |= (1 << highVoltLed); // LED HIGH VOLT
  }
  else if ((percentVolt < 70) && (percentVolt > 35)) {
    PORTD |= (1 << medVoltLed); // LED MEDIUM VOLT
  }
  else if (percentVolt < 35) {
    PORTD |= (1 << lowVoltLed); //LED LOW VOLT
  }
  return percentVolt;   //battary percentage
}


void dataReset() {
  char str[21] = "0000 +8801742975218 A";
  for (i = 0; i < 21; i++)
  {
    EEPROM.write(i, str[i]);
    delay(10);
  }
  configDataGet();
  blinkLed(30, 30);//blinkLed(delay,numberOfRepeat)
}


void blinkLed(byte delayBlink, byte delayRepet) {
  for (byte k = 0; k < delayRepet; k++) {
    PORTD |= (1 << highVoltLed); // LED HIGH VOLT
    PORTD |= (1 << medVoltLed); // LED MEDIUM VOLT
    PORTD |= (1 << lowVoltLed); // LED MEDIUM VOLT
    delay(delayBlink);
    PORTD &= ~(1 << highVoltLed); //LOW
    PORTD &= ~(1 << medVoltLed); //LOW
    PORTD &= ~(1 << lowVoltLed); //LOW
    delay(delayBlink);
  }
}

void blinkLed2(int delayBlink2, byte delayRepet2) {
  for (byte k = 0; k < delayRepet2; k++) {
    PORTD |= (1 << highVoltLed); // LED HIGH VOLT
    delay(delayBlink2);
    PORTD &= ~(1 << highVoltLed); //LOW
    PORTD |= (1 << medVoltLed); // LED MEDIUM VOLT
    delay(delayBlink2);
    PORTD &= ~(1 << medVoltLed); //LOW
    PORTD |= (1 << lowVoltLed); // LED MEDIUM VOLT
    delay(delayBlink2);
    PORTD &= ~(1 << lowVoltLed); //LOW
  }
}
