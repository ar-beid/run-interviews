@echo off

SET URL=https://red-interviewing.niposoftware-dev.com/Interviews/cGvxV/qky74PF8JHAg3WRT8EK8

SET INTERVIEWS=C:\wrk\ar-beid\run-interviews\example\reporting-test-interviews-1.csv
SET QNAIRE=C:\wrk\ar-beid\run-interviews\example\reporting-test-questionnaire.csv

SET EXE=C:\wrk\ar-beid\run-interviews\Runner\bin\Debug\runner.exe

call %EXE% "%URL%" "%QNAIRE%" "%INTERVIEWS%"