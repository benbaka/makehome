SHELL = /bin/sh
OBDIR = $(HOME)/.config/openbox
SRC = menu.xml rc.xml
TARGETS = $(patsubst %, $(OBDIR)/%, $(SRC))

all: $(OBDIR) $(TARGETS)

$(OBDIR)/%: % 
	cp $< $@

$(OBDIR):
	[ -d $(OBDIR) ] || mkdir $(OBDIR)
