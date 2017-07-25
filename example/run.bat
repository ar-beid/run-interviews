@echo off

SET URL=https://red-interviewing.niposoftware-dev.com/Interviews/cGvxV/faNvPcEjj5Ax8sppX6oH

SET INTERVIEWS=C:\wrk\ar-beid\run-interviews\example\reporting-test-interviews-test.csv
SET QNAIRE=C:\wrk\ar-beid\run-interviews\example\reporting-test-questionnaire.csv

SET EXE=C:\wrk\ar-beid\run-interviews\Runner\bin\Debug\runner.exe

call %EXE% "%URL%" "%QNAIRE%" "%INTERVIEWS%"