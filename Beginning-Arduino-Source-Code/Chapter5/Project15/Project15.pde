// Project 15 - Simple Motor Control 电位器控制PWM电机

int potPin = 0;           // Analog in 0 connected to the potentiometer 电位器
int transistorPin = 9;     // PWM Pin 9 connected to the base of the transistor 控制晶体管 驱动电机
int potValue = 0;         // value returned from the potentiometer

void setup() {
  // set  the transistor pin as output:
  pinMode(transistorPin, OUTPUT);
}

void loop() {
  // read the potentiometer, convert it to 0 - 255:
  potValue = analogRead(potPin) / 4;
  // use that to control the transistor:
  analogWrite(transistorPin, potValue);
}
