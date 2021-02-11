##
#
# @file
# @version 1.0
build: config
	go build goblocks.go

config:
	./checkConfig

install: build
	cp -f goblocks /usr/local/bin/goblocks; \
	chmod 755 /usr/local/bin/goblocks

uninstall:
	rm -f /usr/local/bin/goblocks
	rm -f ${HOME}/.config/goblocks.json

run: build
	./goblocks
