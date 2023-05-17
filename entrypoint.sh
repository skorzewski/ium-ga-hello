#!/bin/sh -l

figlet "Hello $1" | tee figlet.txt
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
