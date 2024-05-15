# Microphone-Based LED Control

This repository contains code for an Arduino project that controls an LED based on sound input from a microphone. The LED toggles its state (on/off) when a significant sound variation is detected.

## Components
- Arduino board
- Microphone sensor
- LED
- Resistors
- Jumper wires
- Breadboard

## Pin Connections
- Microphone sensor output to `A0`
- Microphone sensor ground to `A1`
- Microphone sensor power to `A2`
- LED to digital pin `13`

## Code Description
The code reads the microphone sensor's output and toggles an LED on or off based on the detected sound levels.

### Variables
- `micPin` (`A0`): Pin connected to the microphone sensor output.
- `gndPin` (`A1`): Pin connected to the microphone sensor ground.
- `powerPin` (`A2`): Pin connected to the microphone sensor power.
- `micValue1` and `micValue2`: Variables to store microphone readings.
- `led1` (`13`): Pin connected to the LED.
- `lightOn`: Boolean to track the LED state.

### Setup
1. Set the pin modes for the LED, microphone power, and ground.
2. Initialize the serial communication for debugging.
3. Power the microphone sensor.

### Loop
1. Read the microphone sensor value twice with a short delay.
2. Print the microphone values to the serial monitor.
3. Compare the two readings to detect significant sound variation.
4. Toggle the LED state if a significant sound variation is detected.

## Usage
1. Connect the components as described in the pin connections section.
2. Upload the code to the Arduino board.
3. Open the Serial Monitor to observe the microphone values.
4. The LED will toggle its state when significant sound variations are detected.

## License
This project is open-source and available under the MIT License. Feel free to modify and distribute as per the terms of the license.

## Author
Yash Singh
Khushi Saxena

## Acknowledgments
Inspired by various Arduino sound detection projects.
