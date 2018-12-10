USBSERIAL_HEX = Arduino-COMBINED-dfu-usbserial-atmega16u2-Uno-Rev3.hex
HID_HEX ?= arduino-keyboardmouse.hex

PROGRAMMER=sudo dfu-programmer
DEVICE=atmega16u2
BOARD=arduino:avr:uno
ARDUINO_DIR=../arduino-1.8.7/
PORT=/dev/ttyACM0
TARGET=accel_mouse/accel_mouse.ino

ARDUINO_OPTS=--port $(PORT) --board $(BOARD)
ARDUINO_OPTS+=--pref sketchbook.path=.

DFU_TIMEOUT=30
define wait_for_reset
  timeout $(DFU_TIMEOUT) \
		bash -c "until $(PROGRAMMER) $(DEVICE) get; do sleep 1; done"
endef

ARDUINO_TIMEOUT=30
define wait_for_programmable
  timeout $(ARDUINO_TIMEOUT) \
		bash -c "until { lsusb | grep Arduino; }; do sleep 1; done"
endef

ifndef DEBUG
.SILENT:
endif

.PHONY: all
all:
	$(MAKE) programmable
	echo "Please unplug and re-plug in the arduino..."
	$(wait_for_programmable)
	$(MAKE) keyboard
	$(MAKE) program_hid
	echo "Please unplug and re-plug in the arduino..."

verify:
	$(ARDUINO_DIR)/arduino --verify $(TARGET) $(ARDUINO_OPTS)

keyboard:
	$(ARDUINO_DIR)/arduino --upload $(TARGET) $(ARDUINO_OPTS)

programmable: sudo_access
	$(wait_for_reset)
	$(PROGRAMMER) $(DEVICE) erase
	$(PROGRAMMER) $(DEVICE) flash --suppress-bootloader-mem $(USBSERIAL_HEX)
	$(PROGRAMMER) $(DEVICE) reset

program_hid: sudo_access
	$(wait_for_reset)
	$(PROGRAMMER) $(DEVICE) erase
	$(PROGRAMMER) $(DEVICE) flash --debug 1 $(HID_HEX)
	$(PROGRAMMER) $(DEVICE) reset

sudo_access:
	sudo echo
