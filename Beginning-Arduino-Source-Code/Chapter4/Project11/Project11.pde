// Project 11 - Piezo Sounder Alarm 通过管脚发声 余弦波声音

float sinVal;
int toneVal;

void setup() {
  	pinMode(8, OUTPUT);
}

void loop() {
  	for (int x=0; x<180; x++) {
    		// convert degrees to radians then obtain sin value
    		sinVal = (cos(x*(3.1412/180)));
// generate a frequency from the sin value
    		toneVal = 2000+(int(sinVal*2000));
    		tone(8, toneVal);
    		delay(2);
  	}
}
