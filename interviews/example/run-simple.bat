@echo off

SET URL=https://red-interviewing.niposoftware-dev.com/Interviews/m2IXp/rmR2vWMuqHPSM5PjIFhK

SET INTERVIEWS=C:\wrk\ar-beid\work\interviews\example\simple-i.csv
SET QNAIRE=C:\wrk\ar-beid\work\interviews\example\simple-q.csv

SET EXE=C:\wrk\ar-beid\work\interviews\Runner\bin\Debug\runner.exe

call %EXE% "%URL%" "%QNAIRE%" "%INTERVIEWS%"