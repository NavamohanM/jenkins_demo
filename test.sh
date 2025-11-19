#!/bin/bash
echo "Running tests..."

if [ -f HelloWorld.java ]; then
    echo "Test Passed: HelloWorld.java exists."
else
    echo "Test Failed: File missing."
    exit 1
fi

javac HelloWorld.java
if [ $? -ne 0 ]; then
    echo "Test Failed: Compilation error."
    exit 1
fi

echo "Test Passed: Compilation successful."

