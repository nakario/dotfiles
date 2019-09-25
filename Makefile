all: update setup deploy

update:
	git pull origin master
	git submodule init
	git submodule update
	git submodule foreach git pull origin master

setup:
	@ bash install.sh

deploy: .zshrc .zsh.d
	@ $(foreach f, $+, ln -sfnv $(abspath $(f)) $(HOME)/$(f);)
