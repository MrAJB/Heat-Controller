// Helper functions to read the temperature sensor

// Initialise the temperature sensor, get into error mode when the sensor is not found
short init_temp(){
  sensors.begin();
  if (sensors.getDS18Count() == 0){
    // Return error code, sensor not found
    return 1;
  }
  else{
    // Set the sensor resolution
    // TODO - Check the resolution settings
    sensors.setResolution(12);
    return 0;
  }
}

// Retrieve temperature from the sensor
short get_temp(){
  if (sensors.getDS18Count() == 0){
    // Return error code, sensor not found
    return 1;
  }
  else {
    sensors.requestTemperatures();
    current_temp = sensors.getTempCByIndex(0);

    // If required, update the max and/or min temperature values
    //TODO - Check for max and min vals

    // Briefly blink the control LED to show that data was successfully collected
    control_LED_blink(500);

    // Operation succesfull
    return 0;
  }
}

// Check if the temperatures found by the sensor make sense/are within range
short check_temp(){
  //TODO - To be implemented, return 1 in case of an error
  return 0;
}
