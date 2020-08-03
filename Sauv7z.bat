REM Create a 7z archive with a timestamp for a file or a dir


REM /!\ Replace TOTO by your file name or directory name
set mything2save=TOTO

REM Get and format the date
set my_date=%date:~6,4%-%date:~3,2%-%date:~0,2%
REM Get the time, cutting digits at the second
set my_time=%time:~0,8%
REM Remove forbidden characters
set my_time=%my_time::=.%

REM Compress TOTO directory as a timestamped 7z archive
"C:\Program Files\7-Zip\7z.exe" a -r "BackUp\"%mything2save%__%my_date%_%my_time%.7z %mything2save%
