.PHONY: check install win/check win/install

check:
	linux/.deploy/check_files.py

install:
	sudo linux/.deploy/install_files "${HOME}"

win/check:
	echo 'Not implemented'

win/install:
	echo 'Not implemented'
