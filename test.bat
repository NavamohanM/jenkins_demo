@echo off
echo Running tests...

IF EXIST HelloWorld.java (
    echo Test Passed: HelloWorld.java file exists.
) ELSE (
    echo Test Failed: File missing.
    exit /b 1
)

REM Test compile
javac HelloWorld.java >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Test Failed: Compilation error.
    exit /b 1
)

echo Test Passed: Compilation successful.
exit /b 0
