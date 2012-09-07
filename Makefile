include ../../build/modules.mk

UGLIFYJS 	= uglifyjs -nc
MODULE 		= redactor
FILENAME 	= ${MODULE}.js
SOURCE_DIR	= js/redactor
SOURCE		= ${SOURCE_DIR}/${MODULE}.js


DEVELOPMENT_FOLDER	= ${DEVELOPMENT_DIR}/${MODULE}
PRODUCTION_FOLDER	= ${PRODUCTION_DIR}/${MODULE}

PRODUCTION			= ${PRODUCTION_DIR}/${FILENAME}
DEVELOPMENT 		= ${DEVELOPMENT_DIR}/${FILENAME}

all:
	mkdir -p ${DEVELOPMENT_FOLDER}
	mkdir -p ${PRODUCTION_FOLDER}
	cp -Rp ${SOURCE_DIR}/${MODULE}.css ${DEVELOPMENT_FOLDER}/${MODULE}.css
	cp -Rp ${SOURCE_DIR}/${MODULE}.css ${PRODUCTION_FOLDER}/${MODULE}.css
	${MODULARIZE} -jq -n "${MODULE}" -css "redactor/redactor" ${SOURCE} > ${DEVELOPMENT}
	${UGLIFYJS} ${DEVELOPMENT} > ${PRODUCTION}

