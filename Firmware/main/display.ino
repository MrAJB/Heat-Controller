// Helper functions to control the display

// Initialise the display before use
void display_init() {
  // Send the initialization sequence to the oled. This leaves the display turned off
  oled.begin();
  oled.setRotation(0);
  // Clear the memory before turning on the display
  oled.clear();
  // Turn on the display
  oled.on();
  // Switch the half of RAM that we are writing to, to be the half that is non currently displayed
  oled.switchRenderFrame();
  oled.off();
}

// Show the current, maximum and minimum value when the button is pressed
void display_update() {
  oled.clear();
  oled.setFont(FONT8X16);
  oled.setCursor(0, 0);
  oled.print("Huidige temp:");
  oled.setCursor(0, 2);
  oled.print(current_temp);
  oled.on();
  oled.switchFrame();
  delay(3000);
  
  oled.clear();
  oled.setCursor(0, 0);
  oled.print("Maximum temp:");
  oled.setCursor(0, 2);
  oled.print(max_temp);
  oled.switchFrame();
  delay(3000);
  
  oled.clear();
  oled.setCursor(0, 0);
  oled.print("Minimum temp:");
  oled.setCursor(0, 2);
  oled.print(min_temp);
  oled.switchFrame();
  delay(3000);

  // Show the runtime on screen
  int days = 0;
  byte hours, minutes = 0;

  days = (runtime/86400000);
  runtime = runtime - (days*86400000);

  hours = (runtime/3600000);
  runtime = runtime - (hours*3600000);

  minutes = (runtime/60000);

  oled.clear();
  oled.setCursor(0, 0);
  oled.print("Sinds:");
  oled.switchFrame();
  delay(3000);

  oled.clear();
  oled.setCursor(0, 0);
  oled.print(days);
  oled.setCursor(0, 2);
  oled.print("dagen");
  oled.switchFrame();
  delay(3000);

  oled.clear();
  oled.setCursor(0, 0);
  oled.print(hours);
  oled.setCursor(0, 2);
  oled.print("uur");
  oled.switchFrame();
  delay(3000);

  oled.clear();
  oled.setCursor(0, 0);
  oled.print(minutes);
  oled.setCursor(0, 2);
  oled.print("minuten");
  oled.switchFrame();
  delay(3000);
  
  oled.off();
}
