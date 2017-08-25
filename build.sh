#!/bin/bash

rm -f ./index.html

cat ./temp_upper.html > ./index.html
cat ./index.md >> ./index.html
cat ./temp_lower.html >>index.html
