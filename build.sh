#!/bin/bash

cp -f sidecar.scpt ./iPad\ Left.app/Contents/MacOS/
cp -f sidecar.scpt iPad\ Right.app/Contents/MacOS/
osadecompile sidecar.scpt > sidecar.source