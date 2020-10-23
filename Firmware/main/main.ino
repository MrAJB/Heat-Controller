// Defining global variables
double current_temp = 999.99, max_temp = -999.99, min_temp = 999.99;
int state = 0;
long last_temp, last_LED;

// Including libraries for display
#include <TinyWireM.h>
#include <Tiny4kOLED.h>

// Defining pins
#define controlPin 0
#define relayPin 1
#define tempPin 3

// Define intervals to run the different functions
#define LED_interval 100
#define temp_interval 5000

void setup() {

  // Setting pin modes
  digitalWrite(controlPin, LOW);
  digitalWrite(relayPin, LOW);
  pinMode(controlPin, OUTPUT);
  pinMode(relayPin, OUTPUT);
  pinMode(tempPin, INPUT);

  // Initialise the display
  init_display();
  show_bootscreen();

  // Initialise the temperature sensor
  // init_temp_sensor()

  // clear the display and turn it off
}

void loop() {
  run_state_machine();
  check_errors();

  delay(5);
}

void run_state_machine(){
  long now = millis();
  switch (state) {
    case 0:
      // No error, running normal code in the background
  
      // Check temp
      if ((now - last_temp) > temp_interval){
        last_temp = now;
        
        //Check the temperature
        //If needed, toggle heater
  
        // Temp functions to check logic for now
        oled.on();
        update_display();
        delay(500);
        oled.off();
      }
  
      // Toggle status LED
      if ((now - last_LED)>LED_interval){
        last_LED = now;
        
        //Toggle the LED
      }
      break;
  
    case 1:
      // No error, running normal code, display is turned on
  
      break;
    
    case 2:
      // Temp error
      
      // Display error message
      // Blink status LED
      // Turn heater off
      break;
      
    default:
      // General error
      // Display general error
      // Turn heater off
      break;
  }
}

void check_errors(){
  // To be implemented

  // Are all temperatures within range?
}
