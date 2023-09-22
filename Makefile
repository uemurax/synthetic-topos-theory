SRC_DIR = src
INDEX_FILE = $(SRC_DIR)/index.rkt
HTML_CONFIG = $(SRC_DIR)/html-config.rkt
COMPILE_TARGET = $(INDEX_FILE) $(HTML_CONFIG)
SITE_DIR = _site

.PHONY: all
all: html

.PHONY: compile
compile:
	raco make -v $(COMPILE_TARGET)

.PHONY: html
html: compile
	raco morg --html-config $(HTML_CONFIG) $(INDEX_FILE) $(SITE_DIR)
