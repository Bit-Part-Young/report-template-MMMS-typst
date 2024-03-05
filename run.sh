#!/bin/bash

file="main.typ"

typst compile ${file} --font-path fonts

rm main_*.pdf

today=$(date +%Y%m%d)
cp main.pdf main_${today}.pdf

