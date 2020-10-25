// Defining global variables
int current_temp = 999, max_temp = -999, min_temp = 999;
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

// Define intervals to run the different functions
#define LED_INTERVAL 100
#define TEMP_INTERVAL 5000

void setup(){

  // Setting pin modes
  digitalWrite(CONTROL_PIN, LOW);
  digitalWrite(RELAY_PIN, LOW);
  pinMode(CONTROL_PIN, OUTPUT);
  pinMode(RELAY_PIN, OUTPUT);

  // Initialise the display
  init_display();
  //show_bootscreen();

  // Initialise the temperature sensor
  sensors.begin();
  if (sensors.getDS18Count() == 0){
    //blink control LED
  }
  else{
    sensors.setResolution(12);
  }

  // Clear the display and turn it off
  //display_off();
}

void loop(){
  delay(100);
}

void check_errors(){
  // To be implemented
  // Are all temperatures within range?
}
