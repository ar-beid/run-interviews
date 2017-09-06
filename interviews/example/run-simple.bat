@echo off

SET URL=https://red-interviewing.niposoftware-dev.com/Interviews/m2IXp/Vu1XPv3dOEodriNs15qK

SET INTERVIEWS=C:\wrk\ar-beid\work\interviews\example\simple-i.csv
SET QNAIRE=C:\wrk\ar-beid\work\interviews\example\simple-q.csv

SET EXE=C:\wrk\ar-beid\work\interviews\Runner\bin\Debug\runner.exe

call %EXE% "%URL%" "%QNAIRE%" "%INTERVIEWS%"