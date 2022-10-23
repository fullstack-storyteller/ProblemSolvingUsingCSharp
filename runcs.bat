@echo off
set filename=%1
echo Recevied filename: %filename%

if %filename:.cs=%==%filename%    set filename=%filename%.cs

set executable=%filename:.cs=.exe%

if exist %executable% del /f %executable%

csc %filename%

if exist %executable% %executable%
:: if not exist %executable% set exit=%executable% not found or created!!

set /p exit=Press enter to exit...

:: no space before or after = sign
:: https://www.tutorialspoint.com/batch_script/batch_script_string_concatenation.htm
:: https://www.knowledgewalls.com/johnpeter/books/msdos-commands/find-replace-string
:: https://stackoverflow.com/questions/7005951/batch-file-find-if-substring-is-in-string-not-in-a-file