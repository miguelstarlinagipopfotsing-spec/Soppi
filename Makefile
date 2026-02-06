# Makefile for Static Site Build

# Defines the public directory
PUBLIC_DIR := public

# Lists the HTML and CSS files to copy
HTML_FILES := $(wildcard *.html)
CSS_FILES := $(wildcard *.css)

# The main target to build the static site
all: copy-html copy-css

# Copy HTML files to the public directory
copy-html:
	@mkdir -p $(PUBLIC_DIR)
	cp $(HTML_FILES) $(PUBLIC_DIR)/

# Copy CSS files to the public directory
copy-css:
	cp $(CSS_FILES) $(PUBLIC_DIR)/