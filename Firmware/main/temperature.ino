// Helper functions to read the temperature sensor

// Retrieve temperature from the sensor
void get_temp(){
  if (sensors.getDS18Count() != 0) {
    sensors.requestTemperatures();
    current_temp = sensors.getTempCByIndex(0);
  }
}
