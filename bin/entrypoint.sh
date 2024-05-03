#!/usr/bin/env bash

filename="$1"
extension="${filename##*.}"
outputfile="-jobname=./out/${filename%%.*}"

clean_up() {
	latexmk -c "$outputfile" "$filename"
	./bin/fix-permissions.sh
}
trap clean_up SIGTERM

case "$extension" in
pdf)
	make "$filename" && clean_up
	;;
tex)
	exec latexmk -pvc -pdf "$outputfile" "$filename" &
	;;
*)
	echo "unknown filetype recognized"
	exit 1
	;;
esac

wait "$!"
