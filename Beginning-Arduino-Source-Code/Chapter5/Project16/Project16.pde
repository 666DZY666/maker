// Project 16 - Using an L293D Motor Driver IC  正反转开关 电位器 控制L293D驱动 电机转动
#define switchPin 2 // switch input  正反转 开关
#define motorPin1 3 // L293D Input 1 正反转 电平
#define motorPin2 4 // L293D Input 2
#define speedPin 9 // L293D enable pin 1   控制电机速度管脚
#define potPin 0 // Potentiometer on analog Pin 0 电位器
int Mspeed = 0;  // a variable to hold the current speed value 电机速度

void setup() {
//set switch pin as INPUT
pinMode(switchPin, INPUT); // 开关

// set remaining pins as outputs
pinMode(motorPin1, OUTPUT);
pinMode(motorPin2, OUTPUT);
pinMode(speedPin, OUTPUT);
}

void loop() {
  Mspeed = analogRead(potPin)/4; // read the speed value from the potentiometer
  analogWrite(speedPin, Mspeed); // write speed to Enable 1 pin
  if (digitalRead(switchPin)) { // If the switch is HIGH, rotate motor clockwise
    digitalWrite(motorPin1, LOW); // set Input 1 of the L293D low
    digitalWrite(motorPin2, HIGH); // set Input 2 of the L293D high
  }
  else {  // if the switch is LOW, rotate motor anti-clockwise
    digitalWrite(motorPin1, HIGH); // set Input 1 of the L293D low
    digitalWrite(motorPin2, LOW); // set Input 2 of the L293D high
  }
}
