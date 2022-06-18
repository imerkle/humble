.POSIX:
.PHONY: *

default: metal bootstrap global

init:
	ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -q -P ""

metal:
	make -C metal

bootstrap:
	make -C bootstrap

tools:
	make -C tools

dev:
	make -C metal k3d env=dev
	make -C bootstrap env=dev
	make -C global env=dev

global:
	make -C global
