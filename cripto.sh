#!/bin/bash

if [ "$1" == "" ];
then
	echo "Uso: $0  wordlist.txt"
	exit
fi

dos2unix $1 >> /dev/null
for palavra in $(cat $1);
do
	md5="$(echo -n "$palavra" | md5sum | cut -d" " -f1)";
	b64="$(echo -m "$palavra" | base64)";
	sha256="$(echo -n "$palavra" | sha256sum | cut -d" " -f1)"
	echo $palavra:$md5:$b64:$sha256
done >> temp$1

cat temp$1 | column -s: -t >> "hash$1.final"
rm temp$1
