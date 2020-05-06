.PHONY: all
all: check install

.PHONY: check
check:
	./.build/shellcheck.sh

.PHONY: install
install:
	./.build/install.sh

.PHONY: macos
macos:
	./.build/macos.sh
