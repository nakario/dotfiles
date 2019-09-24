all: update install deploy

update:
	git pull origin master

setup:
	@ bash install.sh

deploy: .zshrc
	@ $(foreach f, $+, ln -sfnv $(abspath $(f)) $(HOME)/$(f);)
