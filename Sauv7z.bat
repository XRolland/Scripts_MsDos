REM Create a 7z archive for a specified file or a dir, 
REM with a timestamped and sortable name
REM in a "Backup" subfolder 

REM To Do:
REM - waiting message during archiving
REM - success message finishing archiving

REM /!\ Replace TOTO by your file name or directory name
set mything2save=TOTO

REM Get and format the date
set my_date=%date:~6,4%-%date:~3,2%-%date:~0,2%
REM Get the time, cutting digits at the second
set my_time=%time:~0,8%
REM Replacing spaces by 0 to avoid errors to get "09:00" instead of "09:00"
set my_time=%my_time: =0%
REM Remove forbidden characters
set my_time=%my_time::=.%

REM Compress TOTO directory as a timestamped 7z archive
"C:\Program Files\7-Zip\7z.exe" a -r Z__%mything2save%"__bak\"%mything2save%__%my_date%_%my_time%.7z %mything2save%
