#!/usr/bin/env bash

filename="${FILE%%.*}"
extension="${FILE##*.}"
latex_build="latexmk -outdir=/out -auxdir=/tmp -pdf"

clean_up() {
	bin/fix-permissions.sh
}
trap clean_up SIGTERM

case "$extension" in
pdf)
	exec $latex_build "$filename".tex
	;;
tex)
	exec $latex_build -view=none -pvc "$filename".tex &
	;;
*)
	echo "unknown filetype recognized"
	exit 1
	;;
esac

wait "$!"
