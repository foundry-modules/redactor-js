all: modularize-script minify-script copy-style minify-style lessify-style
	
include ../../build/modules.mk

MODULE = redactor
MODULARIZE_OPTIONS = -jq -css "redactor/redactor"
SOURCE_SCRIPT_FOLDER = js/redactor
SOURCE_SCRIPT_FILE_PREFIX = 

SOURCE_STYLE_FILE_NAME = redactor
SOURCE_STYLE_FILE_PREFIX = 