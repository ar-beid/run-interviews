@echo off

SET RUN_FILE=run-simple.bat
SET COUNT=10

@echo # of runs: %COUNT%

FOR /L %%i IN (1, 1, %COUNT%) DO (call "cmd /c start "run:%%i" %RUN_FILE%")
