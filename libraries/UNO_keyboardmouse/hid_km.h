const uint8_t KEY_EVENT = 0;
const uint8_t MOUSE_EVENT = 1;
const uint8_t KEY_NULL = 2;
const uint8_t MOUSE_NULL = 3;

class KeyboardMouse {
  public:
    struct {
      uint8_t buttons; int8_t x;
      int8_t y;
      int8_t wheel; /* Not yet implemented */
      int8_t hwheel; /* Not yet implemented */
    } mouseReport;

    struct {
    	uint8_t modifier;
      uint8_t _unused;
    	uint8_t key1;
    	uint8_t key2;
    	uint8_t key3;
    	uint8_t key4;
    	uint8_t key5;
    	uint8_t key6;
    } keyReport;

    void send_keyreport();
    void send_keynull();
    void clear_keyreport();

    void send_mousereport();
    void send_mousenull();
    void clear_mousereport();
};
