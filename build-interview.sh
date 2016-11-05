#!/bin/bash
echo "Compiling interview sources..."
javac --module-path classes/. -d classes/se.omegapoint.interview $(find se.omegapoint.interview -name "*.java") && \
echo "Packaging into bin/interview.jar..." && \
mkdir -p bin && \
jar --create --file=bin/interview.jar --module-version=1.0 --main-class=se.omegapoint.interview.PersonNumberValidator -C classes/se.omegapoint.interview .
