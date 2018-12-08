struct {
  uint8_t buttons;
  int8_t x;
  int8_t y;
  int8_t wheel; /* Not yet implemented */
} mouseReport;


const uint8_t nullReport[4] = {0, 0, 0, 0};
