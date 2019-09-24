all: update deploy

update:
	git pull origin master

deploy: .zshrc
	@ $(foreach f, $+, ln -sfnv $(abspath $(f)) $(HOME)/$(f);)
