// Defining global variables
short current_temp = 999, max_temp = -999, min_temp = 999;
byte state = 0;

// Defining pins
#define CONTROL_PIN 4
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
  digitalWrite(CONTROL_PIN, HIGH);
  digitalWrite(RELAY_PIN, LOW);
  pinMode(CONTROL_PIN, OUTPUT);
  pinMode(RELAY_PIN, OUTPUT);

  // Blink control LED to show start of the initialisation
  control_LED_blink(500);

  // Initialise the display
  init_display();
  display_msg("Initializing...",1);

  // Initialise the temperature sensor and raise error if temp sensor not found
  if(init_temp()==1){
    sensor_error();
  }

  // Long blink control LED to show finish of the initialisation and turn the display off
  control_LED_blink(2000);
  display_off();
}

void loop(){
  // Get new temperature values from the sensor
  if(get_temp()==1){
    temp_error();
  }

  // Assess if the stored values make sense
  if(check_temp()==1){
    temp_error();
  }

  // Turn the heater on or off if needed
  // TODO - To be implemented

  // Pulse the control LED in a for loop and check if the button is pressed
  // TODO - To be implemented

  // TODO - Functions for debugging purposes, remove when code is finished
  delay(1000);
  read_switch();
  // control_LED_blink(500);
}

void read_switch()
{
  // Save the condition of the output pin
  byte PinState = digitalRead(CONTROL_PIN);

  // Invert pinMode, read status and revert back to normal mode
  pinMode(CONTROL_PIN, INPUT_PULLUP);
  byte switchPosition = digitalRead(CONTROL_PIN);
  pinMode(CONTROL_PIN, OUTPUT);
  
  // Restore the pin state
  digitalWrite(CONTROL_PIN, PinState);

  // Handle the pin reading
  if (switchPosition == 0)  {
    // Button is pressed
    // TODO - Implement follow up
  }
  else {
    // Button is not pressed;
  }
}
