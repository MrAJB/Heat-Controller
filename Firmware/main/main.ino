// Defining global variables
short current_temp = 999, max_temp = -999, min_temp = 999;
byte state = 0;

// Defining pins
#define CONTROL_PIN 0
#define RELAY_PIN 1
#define TEMP_PIN 3

// Include libraries for display
#include <TinyWireM.h>
#include <Tiny4kOLED.h>

// Include libraries for temperature sensor and define
#include <OneWire.h>
#include <DallasTemperature.h>
OneWire oneWire(TEMP_PIN);
DallasTemperature sensors(&oneWire);

void setup(){
  // Setting pin modes
  digitalWrite(CONTROL_PIN, LOW);
  digitalWrite(RELAY_PIN, LOW);
  pinMode(CONTROL_PIN, OUTPUT);
  pinMode(RELAY_PIN, OUTPUT);

  // Attach interrupts
  // to be implemented
  
  // Initialise the temperature sensor and raise error if temp sensor not found
  if(init_temp()==1){
    sensor_error();
  }

  // Initialise the display
  init_display();
  //show_bootscreen(), if possible with memory constraints
}

void loop(){
  delay(100);
}

void check_errors(){
  // To be implemented
  // Are all temperatures within range?
}
