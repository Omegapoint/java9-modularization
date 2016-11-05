#!/bin/bash
echo "Compiling util sources..."
javac -d classes/se.omegapoint.utils $(find se.omegapoint.utils -name "*.java") && \
echo "Packaging into bin/utils.jar..."  && \
mkdir -p bin  && \
jar --create --file=bin/utils.jar --module-version=1.0 -C classes/se.omegapoint.utils .
