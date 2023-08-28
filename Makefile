SRC_DIR = src
INDEX_FILE = $(SRC_DIR)/index.rkt
SITE_DIR = _site

.PHONY: all
all: html

.PHONY: compile
compile:
	raco make -v $(INDEX_FILE)

.PHONY: html
html: compile
	raco morg --html $(INDEX_FILE) $(SITE_DIR)
