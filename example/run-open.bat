@echo off

SET URL=https://red-interviewing.niposoftware-dev.com/Interviews/cGvxV/hTqSe04AucXfrNM7hLnS

SET INTERVIEWS=C:\wrk\run-interviews\example\open-i.csv
SET QNAIRE=C:\wrk\run-interviews\example\open-q.csv

SET EXE=C:\wrk\run-interviews\Runner\bin\Debug\runner.exe

call %EXE% "%URL%" "%QNAIRE%" "%INTERVIEWS%"