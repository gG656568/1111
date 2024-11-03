@echo off
cd %~dp0
cd..
cd job
conda run -n gupiao python execute_daily_job.py
pause
exit
