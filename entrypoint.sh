#!/usr/bin/env bash

build_document() {
	make
}

case "${1}" in
build) build_document "${2}" ;;
*) echo unknown command && exit 1 ;;
esac
