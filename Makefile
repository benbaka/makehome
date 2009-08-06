# Make a happy home!
# Author: Lorenzo Cabrini <lorenzo.cabrini@gmail.com>

SHELL = /bin/sh
DIRLIST = bin dl doc etc lib log mail mus pic pkg proj pub tmp vid foo
DIRS = $(patsubst %, $(HOME)/%, $(DIRLIST))
SVIMFILES = vimrc gvimrc
VIMFILES = $(patsubst %, $(HOME)/.%, $(SVIMFILES))
SZSHFILES = zlogin zlogout zprofile zshenv zshrc
ZSHFILES = $(patsubst %, $(HOME)/.%, $(SZSHFILES))
OBDIR = $(HOME)/.config/openbox
SOBFILES = menu.xml rc.xml
OBFILES = $(patsubst %, $(OBDIR)/%, $(SOBFILES))
SDOTFILES = xinitrc
DOTFILES = $(patsubst %, $(HOME)/.%, $(SDOTFILES))

home: $(DIRS) $(VIMFILES) $(ZSHFILES) $(OBFILES) $(DOTFILES)

$(DIRS):
	[ -d $@ ] || mkdir $@

$(VIMFILES): $(SVIMFILES)

$(ZSHFILES): $(SZSHFILES)

$(OBFILES): $(OBDIR) $(SOBFILES)

$(DOTFILES): $(SDOTFILES)

$(OBDIR):
	mkdir $(OBDIR)

$(HOME)/.%: %
	cp $< $@

$(OBDIR)/%: %
	cp $< $@

