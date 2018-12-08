/* Arduino USB Mouse HID demo */

/* Author: Darran Hunt
 * Release into the public domain.
 */

struct {
  uint8_t buttons;
  int8_t x;
  int8_t y;
  int8_t wheel; /* Not yet implemented */
} mouseReport;

uint8_t nullReport[4] = {0, 0, 0, 0};
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
