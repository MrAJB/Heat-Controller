// Helper functions to control the LEDs


//  Turn control LED on (full power)
void control_LED_on(){
  digitalWrite(CONTROL_PIN, LOW);
}

//  Turn control LED on (specified PWM power)
void control_LED_on(short pwm){
  pwm = 255 - pwm;
  analogWrite(CONTROL_PIN, pwm);
}

//  Turn control LED off
void control_LED_off(){
  digitalWrite(CONTROL_PIN, HIGH);
}

//  Blink the LED for the specified duration
void control_LED_blink(short dur){
  control_LED_on();
  delay(dur);
  control_LED_off();
  delay(dur);
}

// Blink the LED for the specified duration, with a different on and off duration
void control_LED_blink(short dur_on, short dur_off){
  control_LED_on();
  delay(dur_on);
  control_LED_off();
  delay(dur_off);
}
