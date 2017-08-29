@echo off

SET URL=https://red-interviewing.niposoftware-dev.com/Interviews/m2IXp/8rQxb2gBLd8ZCjjnGaUx

SET INTERVIEWS=C:\wrk\ar-beid\work\interviews\example\reporting-test-interviews-100+.csv
SET QNAIRE=C:\wrk\ar-beid\work\interviews\example\reporting-test-questionnaire.csv

SET EXE=C:\wrk\ar-beid\work\interviews\Runner\bin\Debug\runner.exe

call %EXE% "%URL%" "%QNAIRE%" "%INTERVIEWS%"