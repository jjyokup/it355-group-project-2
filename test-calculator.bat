@ECHO off

REM Define the relative path to the C++ source files
SET SOURCE_PATH=src\LoanCalculator

REM Define the name of the output folder within src
SET OUTPUT_FOLDER=out

REM Define the path to the C++ compiler
SET CXX_COMPILER=C:\msys64\ucrt64\bin\g++.exe

ECHO Compiling C++ files...
"%CXX_COMPILER%" -o %OUTPUT_FOLDER%\Calculator.exe %SOURCE_PATH%\main.cpp %SOURCE_PATH%\Loan.cpp

if ERRORLEVEL 1 (
    ECHO Error: Failed to compile C++ files.
    PAUSE
    exit /b
)
ECHO C++ files compiled successfully.


ECHO Starting program...
%OUTPUT_FOLDER%\Calculator.exe

PAUSE
