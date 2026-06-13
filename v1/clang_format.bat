@echo off
setlocal
cd /d %~dp0
cd src
clang-format   parser.cpp main.cpp lexer.cpp dast.cpp dast.h -i --style="{NamespaceIndentation: None,IndentWidth: 4}"