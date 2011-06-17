REM * Created by Jason Harrington
REM * March 25, 2010
REM * If you comment out the line with set /p name
REM * and put "set name=filename" then the compilation
REM * is automatic.
@echo off
cls
echo.
:loop
set name=
set /p name= Please enter file name without extension: 
del *.toc *.ind *.tmp
latex -interaction=batchmode %name% 
latex -interaction=batchmode %name%
bibtex -interaction=batchmode %name% 
latex -interaction=batchmode %name% 
latex -interaction=batchmode %name% 
dvipdfm %name%.dvi
yap %name%.dvi