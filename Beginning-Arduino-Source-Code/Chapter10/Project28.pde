// Project 28 =======Stepper步进电机控制
// https://www.arduino.cc/en/Tutorial/StepperSpeedControl
#include <Stepper.h>

// steps value is 360 / degree angle of motor
#define STEPS 200 // 步进总步数

// create a stepper object on pins 4, 5, 6 and 7
Stepper stepper(STEPS, 4, 5, 6, 7);

void setup()
{
}

void loop()
{
    stepper.setSpeed(60);
    stepper.step(200);
    delay(100);
    stepper.setSpeed(20);
    stepper.step(-50);
    delay(100);
}

