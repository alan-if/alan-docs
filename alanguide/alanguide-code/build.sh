#!/bin/bash

echo "======================================"
echo "Compiling the \"TV TIME!\" adventure..."
echo "======================================"
alan -import mylib tvtime.alan
echo "=========================="
echo "Running commands script..."
echo "=========================="
for sol in *.a3s ; do
	transcript="${sol%.a3s}.a3t"
	echo " - $sol"
	arun.exe -r tvtime.a3c < $sol > %%~ni.a3t
done
