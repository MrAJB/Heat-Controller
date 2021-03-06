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
    if (current_temp > max_temp) {
      max_temp = current_temp;
    }
    
    if (current_temp < min_temp) {
      min_temp = current_temp;
    }

    // Briefly blink the control LED to show that data was successfully collected
    control_LED_blink(500);
    control_LED_blink(500);

    // Operation succesfull
    return 0;
  }
}

// Check if the temperatures found by the sensor make sense/are within range
short check_temp(){
  // Check for outliers in temperature values and return 1 if so
  if (current_temp > 50 || current_temp < -50){
    return 1;
  }
  
  if (max_temp > 50 || max_temp < -50){
    return 1;
  }

  if (min_temp > 50 || min_temp < -50){
    return 1;
  }

  // Values are good
  return 0;
}
