// Helper functions to control the relay

// Turn the heater on
void heater_on(){
  digitalWrite(RELAY_PIN, HIGH);
}

// Turn the heater off
void heater_off(){
  digitalWrite(RELAY_PIN, LOW);
}
