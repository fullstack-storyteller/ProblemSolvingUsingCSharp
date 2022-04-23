@echo off
set filename=%1
echo Recevied filename: %filename%

if %filename:.cs=%==%filename%    set filename=%filename%.cs

csc %filename%

set executable=%filename:.cs=.exe%

%executable%

set /p exit=Press enter to exit...

:: no space before or after = sign
:: https://www.tutorialspoint.com/batch_script/batch_script_string_concatenation.htm
:: https://www.knowledgewalls.com/johnpeter/books/msdos-commands/find-replace-string
:: https://stackoverflow.com/questions/7005951/batch-file-find-if-substring-is-in-string-not-in-a-file