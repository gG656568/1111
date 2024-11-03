@echo off
cd %~dp0
cd..
cd job
echo ------整体作业，支持批量作业------
conda run -n gupiao python execute_daily_job.py
conda run -n gupiao python execute_daily_job.py 2023 - 03 - 01
conda run -n gupiao python execute_daily_job.py 2023 - 03 - 01,2023 - 03 - 02
conda run -n gupiao python execute_daily_job.py 2023 - 03 - 01 2023 - 03 - 21
echo ------单功能作业，除了创建数据库，其他都支持批量作业------
conda run -n gupiao python init_job.py
conda run -n gupiao python selection_data_daily_job.py
conda run -n gupiao python basic_data_daily_job.py
conda run -n gupiao python backtest_data_daily_job.py
conda run -n gupiao python basic_data_other_daily_job.py
conda run -n gupiao python indicators_data_daily_job.py
conda run -n gupiao klinepattern_data_daily_job.py
conda run -n gupiao python strategy_data_daily_job.py
conda run -n gupiao python backtest_data_daily_job.py
echo ------正在执行作业中，请等待------
conda run -n gupiao python execute_daily_job.py
pause
exit
