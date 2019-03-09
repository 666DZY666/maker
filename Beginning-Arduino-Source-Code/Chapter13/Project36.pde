// Project 36   温度传感器  华氏度 摄氏度 串口打印

#define sensorPin 0

float Celsius, Fahrenheit, Kelvin;
int sensorValue;

void setup() {
Serial.begin(9600);
Serial.println("Initialising.....");
}

void loop() {

  GetTemp();  
  Serial.print("Celsius: ");
  Serial.println(Celsius);
  Serial.print("Fahrenheit: ");
  Serial.println(Fahrenheit);
  Serial.println();

  delay(2000);
}

void GetTemp()
{
  sensorValue = analogRead(sensorPin); // read the sensor
  Kelvin = (((float(sensorValue) / 1023) * 5) * 100); // convert to Kelvin
  Celsius = Kelvin - 273.15; // convert to Celsius
  Fahrenheit = (Celsius * 1.8) +32;  // convert to Fahrenheit
}

