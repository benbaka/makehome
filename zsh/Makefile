SHELL = /bin/sh
SRC = zlogin zlogout zprofile zshenv zshrc
TARGETS = $(patsubst %, $(HOME)/.%, $(SRC))

all: $(TARGETS)

$(HOME)/.%: %
	cp $< $@
