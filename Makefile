# Make a happy home!
# Author: Lorenzo Cabrini <lorenzo.cabrini@gmail.com>

SHELL = /bin/sh
DIRLIST = bin dl doc etc lib log mail mus pic pkg proj pub tmp vid foo
DIRS = $(patsubst %, $(HOME)/%, $(DIRLIST))
SVIMFILES = vimrc gvimrc
VIMFILES = $(patsubst %, $(HOME)/.%, $(SVIMFILES))
SZSHFILES = zlogin zlogout zprofile zshenv zshrc
ZSHFILES = $(patsubst %, $(HOME)/.%, $(SZSHFILES))

home: $(DIRS) $(VIMFILES) $(ZSHFILES)

$(DIRS):
	[ -d $@ ] || mkdir $@

$(VIMFILES): $(SVIMFILES)

$(ZSHFILES): $(SZSHFILES)

$(HOME)/.%: %
	cp $< $@

