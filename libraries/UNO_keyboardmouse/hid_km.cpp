#if ARDUINO >= 100
 #include "Arduino.h"
#else
 #include "WProgram.h"
#endif

#include <hid_km.h>
void KeyboardMouse::send_keyreport() {
   Serial.write(&KEY_EVENT, 1);
   Serial.write((uint8_t*)&keyReport, sizeof(keyReport));
}

void KeyboardMouse::send_keynull() {
   Serial.write(&KEY_NULL, 1);
}

void KeyboardMouse::clear_keyreport() {
  memset(&keyReport, 0, sizeof(keyReport));
}

void KeyboardMouse::send_mousereport() {
   Serial.write(&MOUSE_EVENT, 1);
   Serial.write((uint8_t*)&mouseReport, sizeof(mouseReport));
}

void KeyboardMouse::send_mousenull() {
   Serial.write(&MOUSE_NULL, 1);
}

void KeyboardMouse::clear_mousereport() {
  memset(&mouseReport, 0, sizeof(mouseReport));
}
