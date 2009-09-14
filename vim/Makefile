SHELL = /bin/sh
SRC = vimrc gvimrc
TARGETS = $(patsubst %, $(HOME)/.%, $(SRC))

all: $(TARGETS)

$(HOME)/.%: %
	cp $< $@
