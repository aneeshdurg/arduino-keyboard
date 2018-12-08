#include "usb_hid_keys/usb_hid_keys.h"
#include "hid_km.h"

uint8_t k_buf[8] = {0}; /* Keyboard report buffer */

void setup();
void loop();

void setup() {
  Serial.begin(9600);
  delay(200);
}

/* Move the mouse in a clockwise square every 5 seconds */
void loop() {
  int ind;
  delay(1000);

  mouseReport.buttons = 0;
  mouseReport.x = 0;
  mouseReport.y = 0;
  mouseReport.wheel = 0;

  mouseReport.x = -2;
  for (ind = 0; ind < 20; ind++) {
    Serial.write((uint8_t *)&mouseReport, 4);
    Serial.write(k_buf, 8);
    Serial.write((uint8_t *)&nullReport, 4);
    Serial.write(k_buf, 8);
  }

  mouseReport.x = 0;
  mouseReport.y = -2;
  for (ind = 0; ind < 20; ind++) {
    Serial.write((uint8_t *)&mouseReport, 4);
    Serial.write(k_buf, 8);
    Serial.write((uint8_t *)&nullReport, 4);
    Serial.write(k_buf, 8);
  }

  mouseReport.x = 2;
  mouseReport.y = 0;
  for (ind = 0; ind < 20; ind++) {
    Serial.write((uint8_t *)&mouseReport, 4);
    Serial.write(k_buf, 8);
    Serial.write((uint8_t *)&nullReport, 4);
    Serial.write(k_buf, 8);
  }

  mouseReport.x = 0;
  mouseReport.y = 2;
  for (ind = 0; ind < 20; ind++) {
    Serial.write((uint8_t *)&mouseReport, 4);
    Serial.write(k_buf, 8);
    Serial.write((uint8_t *)&nullReport, 4);
    Serial.write(k_buf, 8);
  }

  k_buf[2] = 4;
  Serial.write((uint8_t *)&nullReport, 4);
  Serial.write(k_buf, 8);
  k_buf[2] = 0;
  Serial.write((uint8_t *)&nullReport, 4);
  Serial.write(k_buf, 8);
}
