all: modularize minify copy-css minify-css
	
include ../../build/modules.mk

MODULE = redactor
MODULARIZE_OPTIONS = -jq -css "redactor/redactor"
SOURCE_DIR = js/redactor
FILENAME_PREFIX = 
CSS_FILES = redactor
