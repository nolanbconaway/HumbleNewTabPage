# Makefile for packaging the HumbleNewTabPage extension

# Variables
EXTENSION_NAME := humble_new_tab
ZIP_FILE := $(EXTENSION_NAME).zip
FILES := manifest.json newtab.html newtab.css newtab.js icons/ media/

# Default target
all: $(ZIP_FILE)

# Create the zip file
$(ZIP_FILE):
	@echo "Creating zip file $(ZIP_FILE)..."
	zip -r $(ZIP_FILE) $(FILES)

# Clean up the zip file
clean:
	@echo "Cleaning up..."
	rm -f $(ZIP_FILE)

.PHONY: all clean