#!/bin/bash

# src/test.sh
EXPECTED="Hello, Test!"

OUTPUT=$(node -e "console.log(require('./app').greet('Test'))")

if [ "$OUTPUT" == "$EXPECTED" ]; then
  echo "Test passed!"
else
  echo "Test failed! Expected '$EXPECTED' but got '$OUTPUT'."
  exit 1
fi
exit 0