#!/bin/bash
echo "Starting application"
java -cp "bin/*" se.omegapoint.interview.PersonNumberValidator "$@"
