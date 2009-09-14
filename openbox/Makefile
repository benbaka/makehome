SHELL = /bin/sh
OBDIR = $(HOME)/.config/openbox
SRC = menu.xml rc.xml
TARGETS = $(patsubst %, $(OBDIR)/%, $(SRC))

all: $(TARGETS)

$(OBDIR)/%: %
	cp $< $@

$(DIR):
	[ -d $(OBDIR) ] || mkdir $(OBDIR)
