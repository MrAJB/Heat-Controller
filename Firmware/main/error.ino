// Helper functions for error handling

// Error mode to indicate that the temperature sensor is not found
void sensor_error(){
    while(true){
        //TODO - Turn heater off
        control_LED_blink(250);

        //TODO - Every now and then, check if the error is resolved and break the loop
    }
}

// Error mode to show temperatures are out of range
void temp_error(){
    while(true){
        //TODO - Turn heater off
        control_LED_blink(250);

        //TODO - Every now and then, check if the error is resolved and break the loop
    }
}
