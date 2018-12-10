/* Arduino USB Keyboard HID demo
 * Cut/Copy/Paste Keys
 */
#include <usb_hid_keys.h>
#include <hid_km.h>

KeyboardMouse output = KeyboardMouse();

void setup() {
  Serial.begin(9600);
  delay(200);
}

int done = 0;
void loop() {
  if (done) {
    delay(1000);
    return;
  }
  done = 1;

  char cmd[] = "echo hacked!";
  for (int i = 0; i < sizeof(cmd) - 1; i++){
    if (cmd[i] >= 'a' && cmd[i] <= 'z')
      output.keyReport.key1 = KEY_A + cmd[i] - 'a';
    else if (cmd[i] == ' ')
      output.keyReport.key1 = KEY_SPACE;
    else {
      output.keyReport.modifier = KEY_MOD_LSHIFT;
      output.keyReport.key1 = KEY_1;
    }
    output.send_keyreport();
    output.send_keynull();
    output.clear_keyreport();
    delay(10);
  }

  output.keyReport.key1 = KEY_ENTER;
  output.send_keyreport();
  output.send_keynull();
}
