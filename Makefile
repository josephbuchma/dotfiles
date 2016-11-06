
all: deps install

deps:
	git clone -b self --depth=1 https://github.com/josephbuchma/dotvim
	git clone https://github.com/sigurdga/gnome-terminal-colors-solarized

install:
	echo 'TODO'
