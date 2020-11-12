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
  oled.print("CURRENT");
  oled.setCursor(0, 2);
  oled.print(current_temp);
  oled.on();
  oled.switchFrame();
  delay(3000);
  
  oled.clear();
  oled.setCursor(0, 0);
  oled.print("MAX");
  oled.setCursor(0, 2);
  oled.print(max_temp);
  oled.switchFrame();
  delay(3000);
  
  oled.clear();
  oled.setCursor(0, 0);
  oled.print("MIN");
  oled.setCursor(0, 2);
  oled.print(min_temp);
  oled.switchFrame();
  delay(3000);
  
  oled.off();
}
