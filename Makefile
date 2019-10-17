all: update setup deploy

.PHONY: update setup deploy

.SUFFIXES: # Delete the default suffixes

update:
	git pull
	git submodule init
	git submodule update
	git submodule foreach git pull origin master

setup:
	@ bash install.sh

deploy: .zshrc .zsh.d .tmux.conf .emacs.d
	@ $(foreach f, $+, ln -sfnv $(abspath $(f)) $(HOME)/$(f);)
