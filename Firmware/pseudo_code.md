# Pseudo Code
This document is used to brainstorm on the functionality of the firmware.


## Pre-setup
- Define variables
- Define pins
- Include the required libraries and define related variables

## Setup
- Set pin modes
- Attach button interrupt to interrupt_handler()
- Init display
- Init temperature sensors > if not found, get into error mode
- Maybe some LED blinking or a message on the display to show that init is going on/succesfull? 

## Loop
- Read temperature sensor once every thirty seconds and store current, max and min values
- If current temp<1 turn heater on
- If current temp>2 turn heater off
- If current, max or min temp is off, get into error state and turn heater off
- During 30 seconds delay, pulse the control LED

## Helper functions
### General
#### interrupt_handler()
Funtion called whenever the user presses the button.
TBD: how to detect a long VS short press?

- Detect button pressed
- If short button press: show current, max and min val (possibly also runtime)
- If long button press: reset current, max and min val. Call update_temp() to set new temp values

### LED
#### control_LED_on()
- Turn control LED on

#### control_LED_off()
- Turn control LED off

#### control_LED_blink(short dur_on, short_dur_off=999)
- Blink the LED for the specified duration
- By default, on and off take the same time, but this can be changed

### Temparature Sensors
#### update_temp()
- Check if temp sensor is still available > if not go into error mode
- Call sensor for current temp in C
- Store current temp
- Check if current temp is higher than max temp, if so overwrite value
- Check if current temp is lower than min temp, if so overwrite value
- Briefly blink the control LED

### Display
#### init_display()
- Call all statements required to init the display
- If possible: show something on the screen (depends on memory available)

#### update_display()
- Show current, max and min temp
- If possible, show runtime

### Error Handling
#### General error
- If this function is called, start an infinite while loop
- In this loop, blink the control LED every half a second
- If possible, show generic error warning on display