@echo off
cd %~dp0
cd..
cd job
echo ------正在执行作业中，请等待------
echo 当前时间作业 conda run -n gupiao python execute_daily_job.py
pause
exit
