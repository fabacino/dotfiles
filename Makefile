.PHONY: update install win/install

update:
	git pull

install:
	zsh install.zsh

win/install:
	echo 'Not implemented'
