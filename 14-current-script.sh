#!/bin/bash

COURSE="DevOps from current script"
echo "Before calling other script: $COURSE"
echo "process ID of current shell script: $$"

./15-other-script.sh

echo "After calling other script, course: $COURSE"