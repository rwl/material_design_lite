VERSION = $(shell grep -oh '[0-9]\+\.[0-9]\+\.[0-9]' ../pubspec.yaml)

TURDS = bower.json package.json LICENSE
MATERIAL = $(TURDS) material.*css material.*js material.*map

OUT = ../lib

PRIMARY = blue_grey indigo purple
ACCENT = pink

COLORS = $(PRIMARY) $(ACCENT) grey deep_orange red deep_purple blue \
light_blue cyan teal green light_green lime yellow amber orange brown

CDN = https://code.getmdl.io

default: all

all: clean $(OUT)/material.css cleanturds custom cleanzip

mdl.zip:
	wget https://code.getmdl.io/$(VERSION)/mdl.zip

$(OUT)/material.css: mdl.zip
	unzip mdl.zip -d ../lib
	touch $@

custom:
	@for primary in $(PRIMARY) ; do \
		for accent in $(ACCENT) ; do \
			wget -P $(OUT) $(CDN)/$(VERSION)/material.$$primary-$$accent.min.css ; \
		done \
	done

cleanturds:
	@( cd ../lib ; rm $(TURDS) )

cleanzip:
	-rm mdl.zip

cleanmdl:
	-@( cd ../lib ; rm $(MATERIAL) )

clean: cleanzip cleanmdl
