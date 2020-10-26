// Helper functions for error handling

// Error mode to indicate that the temperature sensor is not found
void sensor_error(){
    while(true){
        //TODO - Turn heater off
        //TODO - Blink LED at a certain rate, to be implemented
        delay(2000);
    }
}

// Error mode to show temperatures are out of range
void temp_error(){
    while(true){
        //TODO - Turn heater off
        //TODO - Blink LED at a certain rate, to be implemented
        delay(500);
    }
}