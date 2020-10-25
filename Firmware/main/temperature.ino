// Helper functions to read the temperature sensor

// Retrieve temperature from the sensor
void get_temp(){
  sensors.requestTemperatures();
  current_temp = sensors.getTempCByIndex(0);
}
