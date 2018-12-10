#include <Wire.h>
#include <Adafruit_MMA8451.h>
#include <Adafruit_Sensor.h>

#include <usb_hid_keys.h>
#include <hid_km.h>

Adafruit_MMA8451 mma = Adafruit_MMA8451();
KeyboardMouse output = KeyboardMouse();

void setup();
void loop();

void setup() {
  // pin 8 disables code.
  pinMode(8, INPUT_PULLUP);

  Serial.begin(9600);

  if (! mma.begin()) {
    Serial.println("Couldnt start");
    while (1);
  }
  mma.setRange(MMA8451_RANGE_2_G);

  delay(200);
}

void loop() {
  if (digitalRead(8) == LOW) {
    output.send_mousenull();
    delay(500);
    return;
  }

  sensors_event_t event;
  mma.getEvent(&event);

  float x = event.acceleration.x;
  float y = event.acceleration.y;

  if (x >= 1 ) {
    output.mouseReport.x = 2;
  } else if (x <= -1) {
    output.mouseReport.x = -2;
  }

  if (y >= 1 ) {
    output.mouseReport.y = 2;
  } else if (y <= -1) {
    output.mouseReport.y = -2;
  }

  int ind;
  for (ind = 0; ind < 20; ind++) {
    output.send_mousereport();
    output.send_mousenull();
  }
  delay(50);
}
