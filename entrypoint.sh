#!/bin/sh -l

figlet "Hello $1" | tee figlet.txt
echo "Entrypoint invoked in: $PWD"
readlink -f figlet.txt
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
