# Make a happy home!
# Author: Lorenzo Cabrini <lorenzo.cabrini@gmail.com>

SHELL = /bin/sh
SUBDIRS = openbox vim zsh
DIRLIST = bin dl doc etc lib log mail mus pic pkg proj pub tmp vid
DIRS = $(patsubst %, $(HOME)/%, $(DIRLIST))
SDOTFILES = xinitrc
DOTFILES = $(patsubst %, $(HOME)/.%, $(SDOTFILES))

home: $(SUBDIRS) $(DOTFILES)

.PHONY: $(SUBDIRS)
$(SUBDIRS):
	cd $@ && make

$(HOME)/.%: %
	cp $< $@

