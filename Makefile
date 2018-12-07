USBSERIAL_HEX=Arduino-COMBINED-dfu-usbserial-atmega16u2-Uno-Rev3.hex
HID_HEX?=Arduino-keyboard-0.3.hex

PROGRAMMER=sudo dfu-programmer
DEVICE=atmega16u2

BOARD=arduino:avr:uno
ARDUINO_DIR=../arduino-1.8.7/
PORT=/dev/ttyACM0

ARDUINO_OPTS=--port $(PORT) --board $(BOARD)


RESET_CHECK=$(PROGRAMMER) $(DEVICE) dump >/dev/null 2>/dev/null
#bash -c "$(RESET_CHECK);X=\$$?; echo is $$X; while [ $$X != 0 ]; do $(RESET_CHECK);X=$$?;done;"
define wait_for_reset
endef

all:
	$(wait_for_reset)

verify:
	$(ARDUINO_DIR)/arduino --verify hid/hid.ino $(ARDUINO_OPTS)

keyboard:
	$(ARDUINO_DIR)/arduino --upload hid/hid.ino $(ARDUINO_OPTS)

programmable:
	$(wait_for_reset)
	@$(PROGRAMMER) $(DEVICE) erase
	@$(PROGRAMMER) $(DEVICE) flash --suppress-bootloader-mem $(USBSERIAL_HEX)
	@$(PROGRAMMER) $(DEVICE) reset

program_hid:
	@$(PROGRAMMER) $(DEVICE) erase
	@$(PROGRAMMER) $(DEVICE) flash --debug 1 $(HID_HEX)
	@$(PROGRAMMER) $(DEVICE) reset
