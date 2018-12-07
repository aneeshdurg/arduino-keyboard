/* Arduino USB Keyboard HID demo
 * Cut/Copy/Paste Keys
 */
#include "usb_hid_keys.h"

uint8_t buf[8] = {0}; /* Keyboard report buffer */

void setup() {
  Serial.begin(9600);
  delay(200);
}

int done = 0;
void loop() {
  if (!done) {
    buf[0] = KEY_MOD_LCTRL;
    buf[2] = KEY_LEFTALT;
    buf[3] = KEY_T;
    // buf[2] = 124;    // Copy key: Less portable
    //Serial.write(buf, 8); // Send keypress
    done = 1;
  } else if (done == 1) {
    char cmd[] = "echo hacked!";
    for (int i = 0; i < sizeof(cmd) - 1; i++){
      if (cmd[i] >= 'a' && cmd[i] <= 'z')
        buf[2] = KEY_A + cmd[i] - 'a';
      else if (cmd[i] == ' ')
        buf[2] = KEY_SPACE;
      else {
        buf[0] = KEY_MOD_LSHIFT;
        buf[2] = KEY_1;
      }
      Serial.write(buf, 8);
      releaseKey(10);
    }
    buf[2] = KEY_ENTER;
    Serial.write(buf, 8);
    releaseKey(10);
    done += 1;
  }
  releaseKey();
}

void releaseKey(int d) {
  memset(buf, 0, sizeof(buf));
  buf[0] = 0;
  buf[2] = 0;
  Serial.write(buf, 8); // Release key
  delay(d);
}
void releaseKey() {
  releaseKey(200);
}
