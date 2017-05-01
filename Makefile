.PHONY: update install clean

update:
	git pull

install:
	zsh install.zsh

clean:
	zsh uninstall.zsh
