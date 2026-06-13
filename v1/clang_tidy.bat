@echo off
setlocal
cd /d %~dp0
cd src
@echo on

C:\msys64\mingw64\bin\clang-tidy main.cpp parser.cpp lexer.cpp dast.cpp   --  -std=c++20 -I ../include