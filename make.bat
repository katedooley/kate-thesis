REM You may need to change the location of the Acrobat Reader
REM You can also comment out the DEL to keep all files
@echo off
ECHO UF THESIS BATCH FILE
ECHO created by Jason Harrington (May 2010)
latex -interaction=batchmode ufsampleETD
latex -interaction=batchmode ufsampleETD
bibtex ufsampleETD
latex -interaction=batchmode ufsampleETD 
latex -interaction=batchmode ufsampleETD
dvipdfm ufsampleETD.dvi
start "c:\Program Files (x86)\Adobe\Reader 9.0\Reader\AcroRd32.exe" ufsampleETD.pdf 
ECHO CLEANING FOLDER...
DEL *.log *.aux *.bbl *.blg
