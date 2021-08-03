.PHONY: all
all: install installcheck

.PHONY: lint
lint:
	.build/shellcheck

.PHONY: install
install:
	.build/install

.PHONY: installcheck
installcheck:
	bash ~/.bash_profile
	bash ~/.bashrc

.PHONY: uninstall
uninstall:
	.build/uninstall

.PHONY: apt
apt:
	debian/install-apt-packages

.PHONY: brew-cli
brew-cli:
	macos/install-brew

.PHONY: brew
brew:
	brew update
	brew bundle
	brew cleanup

.PHONY: npm
npm:
	npm install -g npm
	npm install -g tldr

.PHONY: linux-conda
linux-conda:
	python/install-conda "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh"

.PHONY: macos-conda
macos-conda:
	python/install-conda "https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh"
