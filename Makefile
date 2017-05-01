.PHONY: update install clean test

update:
	git pull

install:
	zsh install.zsh

clean:
	zsh uninstall.zsh

test:
	zsh test.zsh
