VERSION = $(shell grep -oh '[0-9]\+\.[0-9]\+\.[0-9]' ../pubspec.yaml)

TURDS = bower.json package.json LICENSE
MATERIAL = $(TURDS) material.*css material.*js material.*map

OUT = ../lib

PRIMARY = blue_grey indigo purple
ACCENT = pink

COLORS = $(PRIMARY) $(ACCENT) grey deep_orange red deep_purple blue \
light_blue cyan teal green light_green lime yellow amber orange brown

CDN = https://code.getmdl.io

#<link rel="stylesheet" href="material.min.css">
MDL_JS = "<script type=\"text/javascript\" src=\"material.min.js\"></script>\n"
ICONS = "<link rel=\"stylesheet\" href=\"fonticons/material-icons.css\">\n"

RAW = https://raw.githubusercontent.com/google/material-design-icons/master/iconfont

FONTICONS = material-icons.css codepoints \
MaterialIcons-Regular.eot MaterialIcons-Regular.ijmap \
MaterialIcons-Regular.svg MaterialIcons-Regular.ttf \
MaterialIcons-Regular.woff MaterialIcons-Regular.woff2

ICONOUT = $(OUT)/fonticons

default: all

all: clean $(OUT)/material.css cleanturds custom fonticons cleanzip

mdl.zip:
	wget https://code.getmdl.io/$(VERSION)/mdl.zip

$(OUT)/material.css: mdl.zip
	unzip mdl.zip -d ../lib
	touch $@

custom:
	@for primary in $(PRIMARY) ; do \
		for accent in $(ACCENT) ; do \
			wget -P $(OUT) $(CDN)/$(VERSION)/material.$$primary-$$accent.min.css ; \
			\
			echo $(MDL_JS)\
"<link rel=\"stylesheet\" href=\"material.$$primary-$$accent.min.css\">\n\n"\
$(ICONS) > $(OUT)/material_$$primary-$$accent.html ; \
		done \
	done

fonticons:
	@for fonticon in $(FONTICONS) ; do \
		wget -O $(ICONOUT)/$$fonticon $(RAW)/$$fonticon ; \
	done

cleanturds:
	@( cd $(OUT) ; rm $(TURDS) )

cleanzip:
	-rm mdl.zip

cleanmdl:
	-@( cd $(OUT) ; rm $(MATERIAL) )

cleanicons:
	-@( cd $(ICONOUT) ; rm $(FONTICONS) )

clean: cleanzip cleanmdl cleanicons
