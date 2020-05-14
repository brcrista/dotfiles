.PHONY: all
all: install installcheck

.PHONY: lint
lint:
	.build/shellcheck.sh

.PHONY: install
install:
	.build/install.sh

.PHONY: installcheck
installcheck:
	bash ~/.bash_profile
	bash ~/.bashrc

.PHONY: uninstall
uninstall:
	.build/uninstall.sh

.PHONY: brew-cli
brew-cli:
	bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

.PHONY: brew
brew:
	brew update
	brew bundle
	brew cleanup

.PHONY: npm
npm:
	npm install -g tldr

.PHONY: conda
conda:
	macos/conda.sh
