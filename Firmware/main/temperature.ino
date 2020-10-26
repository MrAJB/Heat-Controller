// Helper functions to read the temperature sensor

// Retrieve temperature from the sensor
short init_temp(){
  sensors.begin();
  if (sensors.getDS18Count() == 0){
    // Return an error code
    return 1;
  }
  else{
    sensors.setResolution(12);
    return 0;
  }
}

void get_temp(){
  sensors.requestTemperatures();
  current_temp = sensors.getTempCByIndex(0);
}
