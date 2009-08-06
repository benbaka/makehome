# Make a happy home!
# Author: Lorenzo Cabrini <lorenzo.cabrini@gmail.com>

SHELL = /bin/sh
DIRS = bin dl doc etc lib log mail mus pic pkg proj pub tmp vid foo
HDIRS = $(patsubst %, $(HOME)/%, $(DIRS))

home: $(HDIRS)

$(HDIRS):
	[ -d $@ ] || mkdir $@


