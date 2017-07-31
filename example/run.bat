@echo off

SET URL=https://interviewing.nfieldbeta.com/Interviews/Jwxn7/8LuZcccpDufbuKsmWYsH

SET INTERVIEWS=C:\wrk\ar-beid\run-interviews\example\reporting-test-interviews-100+.csv
SET QNAIRE=C:\wrk\ar-beid\run-interviews\example\reporting-test-questionnaire.csv

SET EXE=C:\wrk\ar-beid\run-interviews\Runner\bin\Debug\runner.exe

call %EXE% "%URL%" "%QNAIRE%" "%INTERVIEWS%"