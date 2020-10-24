// Defining global variables
double current_temp = 999.99, max_temp = -999.99, min_temp = 999.99;
int state = 0;
long last_temp, last_LED;

// Defining pins
#define CONTROL_PIN 0
#define RELAY_PIN 1
#define TEMP_PIN 3

// Including libraries for display
#include <TinyWireM.h>
#include <Tiny4kOLED.h>

// Includie libraries for temperature sensor
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
  //init_display();
  //show_bootscreen();

  // Initialise the temperature sensor
  sensors.begin();
  if (sensors.getDS18Count() == 0){
    // Show sensor not found error
  }
  else{
    sensors.setResolution(12);
  }
  
  // Clear the display and turn it off
}

void loop(){
  run_state_machine();
  check_errors();

  delay(5);
}

void run_state_machine(){
  long now = millis();
  switch (state) {
    case 0:
<<<<<<< Updated upstream
      // No error, running normal code in the background
      state0(now);
      
=======
      // No error, running normal code, display is off
      state0(now);
>>>>>>> Stashed changes
      break;
  
    case 1:
      // No error, running normal code, display is on
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

void state0(long now){
  // Check temp
  if ((now - last_temp) > TEMP_INTERVAL){
    
    last_temp = now;
<<<<<<< Updated upstream
    get_temp();
=======
    display_msg(F("TestMessage"), true);
    delay(1000);
    oled.off();
    //get_temp();
>>>>>>> Stashed changes
    //If needed, toggle heater
  }
  
  // Toggle status LED
  if ((now - last_LED) > LED_INTERVAL){
    last_LED = now;  
    //Toggle the LED
  }
}
