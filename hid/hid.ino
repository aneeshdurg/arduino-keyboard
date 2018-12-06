/* Arduino USB Keyboard HID demo
 * Cut/Copy/Paste Keys
 */
#include "usb_hid_keys.h"

#define KEY_LEFT_CTRL  0x01
#define KEY_LEFT_SHIFT  0x02
#define KEY_RIGHT_CTRL  0x10
#define KEY_RIGHT_SHIFT 0x20

uint8_t buf[8] = {
  0 };  /* Keyboard report buffer */

void setup()
{
  Serial.begin(9600);
  delay(200);
}

void loop()
{
    buf[0] = KEY_LEFT_CTRL;   // Ctrl
    buf[2] = 6;    // Letter C
    // buf[2] = 124;    // Copy key: Less portable
    Serial.write(buf, 8); // Send keypress
    releaseKey();
}

void releaseKey()
{
  buf[0] = 0;
  buf[2] = 0;
  Serial.write(buf, 8); // Release key
  delay(500);
}
