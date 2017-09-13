@echo off

SET URL=https://red-interviewing.niposoftware-dev.com/Interviews/m2IXp/dLgIhULuAdnG4C3z3GZt

SET INTERVIEWS=C:\wrk\ar-beid\work\interviews\example\sample-i.csv
SET QNAIRE=C:\wrk\ar-beid\work\interviews\example\sample-q.csv

SET EXE=C:\wrk\ar-beid\work\interviews\Runner\bin\Debug\runner.exe

call %EXE% "%URL%" "%QNAIRE%" "%INTERVIEWS%"