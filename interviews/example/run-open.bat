@echo off

SET URL=https://red-interviewing.niposoftware-dev.com/Interviews/m2IXp/O5BzDKdZGONQZUowYNMN

SET INTERVIEWS=C:\wrk\ar-beid\work\interviews\example\open-i.csv
SET QNAIRE=C:\wrk\ar-beid\work\interviews\example\open-q.csv

SET EXE=C:\wrk\ar-beid\work\interviews\Runner\bin\Debug\runner.exe

call %EXE% "%URL%" "%QNAIRE%" "%INTERVIEWS%"