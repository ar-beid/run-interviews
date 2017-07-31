@echo off

SET URL=https://red-interviewing.niposoftware-dev.com/Interviews/cGvxV/mBPtyFF1C7jLqxeG8hRV

SET INTERVIEWS=C:\wrk\ar-beid\run-interviews\example\open-i.csv
SET QNAIRE=C:\wrk\ar-beid\run-interviews\example\open-q.csv

SET EXE=C:\wrk\ar-beid\run-interviews\Runner\bin\Debug\runner.exe

call %EXE% "%URL%" "%QNAIRE%" "%INTERVIEWS%"