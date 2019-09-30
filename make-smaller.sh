#!/bin/bash

BN=$(basename $1)
FN="${BN%.*}"
EX="${BN##*.}"

echo Reducing by 75%.
# reduce by 75%
convert "${FN}.${EX}" -resize 75% "${FN}-75pc.${EX}"

echo Reducing by 60%.
# reduce by 60%
convert "${FN}.${EX}" -resize 60% "${FN}-60pc.${EX}"

echo Reducing by 50%.
# reduce by 50%
convert "${FN}.${EX}" -resize 50% "${FN}-50pc.${EX}"

echo Done.

