@echo off

SET URL=https://interviewing.nfieldbeta.com/Interviews/Jwxn7/gzp3O4F8Iyw1fp0O2ns1

SET INTERVIEWS=C:\wrk\ar-beid\run-interviews\example\open-i.csv
SET QNAIRE=C:\wrk\ar-beid\run-interviews\example\open-q.csv

SET EXE=C:\wrk\ar-beid\run-interviews\Runner\bin\Debug\runner.exe

call %EXE% "%URL%" "%QNAIRE%" "%INTERVIEWS%"