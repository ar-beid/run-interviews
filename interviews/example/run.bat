@echo off

SET URL=https://red-interviewing.niposoftware-dev.com/Interviews/amd0U/gTKPjgt7QeMGOkzDjn4H

SET INTERVIEWS=C:\wrk\ar-beid\work\interviews\example\reporting-test-interviews-exit.csv
SET QNAIRE=C:\wrk\ar-beid\work\interviews\example\reporting-test-questionnaire.csv

SET EXE=C:\wrk\ar-beid\work\interviews\Runner\bin\Debug\runner.exe

call %EXE% "%URL%" "%QNAIRE%" "%INTERVIEWS%"