#!/bin/bash
echo "Bash version ${BASH_VERSION}"

for i in {1..6}; do
    touch "./assets/files/name_$i.ext"
done
