// Defining global variables
int current_temp = 999.99, max_temp = -999.99, min_temp = 999.99;
byte state = 0;
const byte on_temp = 22, off_temp = 24;
long runtime, last_reset = 0;

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
  display_init();

  // Initialise the temperature sensor and raise error if temp sensor not found
  if(init_temp()==1){
    sensor_error();
  }

  // Blink control LED to show finish of the initialisation
  control_LED_blink(500);
}

void loop(){
  //Update the runtime
  runtime = millis() - last_reset;
  
  // Get new temperature values from the sensor
  if(get_temp()==1){
    temp_error();
  }

  // Assess if the stored values make sense
  if(check_temp()==1){
    temp_error();
  }

  // Turn the heater on or off if needed
  if (current_temp < on_temp) {
    heater_on();
  }
  else if (current_temp > off_temp) {
    heater_off();
  }

  // Pulse the control LED four times over about 30 seconds and check if the button is pressed in the meantime
  for (byte j = 0; j<=3; j++){
    for (short i = 0; i <= 510; i++) {
      // Check if the button is pressed
      if(read_switch()==1){
        // If a button press is detected, loop for five seconds. Stop if the button is released, else set long_press to true
        boolean long_press = false;
        for (short i = 0; i <= 50; i++){
          delay(100);
          if(read_switch()==0){
            long_press = false;
            display_update();
            break;
          }
          else {
            long_press = true;
          }
        }

        // Reset all values if long_press is true and indicate this with bright blinking
        if(long_press == true){
          for (short i = 0; i <= 10; i++){
            control_LED_blink(100);
          }
          last_reset = millis();
          current_temp = 999.99, max_temp = -999.99, min_temp = 999.99;
        }
      }
  
      // Set the LED value
      short val = i;
      if (i > 255){
        val = 510 - i;
      }
  
      // Control the LED
      control_LED_on(val);
      delay(15);
    }
  }
}

byte read_switch()
{
  // Save the condition of the output pin
  byte PinState = digitalRead(CONTROL_PIN);

  // Invert pinMode, read status and revert back to normal mode
  pinMode(CONTROL_PIN, INPUT_PULLUP);
  byte switchPosition = digitalRead(CONTROL_PIN);
  pinMode(CONTROL_PIN, OUTPUT);
  
  // Restore the pin state
  digitalWrite(CONTROL_PIN, PinState);

  // Return 1 if the button is pressed
  if (switchPosition == 0)  {
    return 1;
  }
  else {
    return 0;
  }
}
