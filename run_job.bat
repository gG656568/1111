@echo off
cd %~dp0
cd..
cd job

conda run -n gupiao python execute_daily_job.py
conda run -n gupiao python execute_daily_job.py 2023 - 03 - 01
conda run -n gupiao python execute_daily_job.py 2023 - 03 - 01,2023 - 03 - 02
conda run -n gupiao python execute_daily_job.py 2023 - 03 - 01 2023 - 03 - 21

conda run -n gupiao python init_job.py
conda run -n gupiao python selection_data_daily_job.py
conda run -n gupiao python basic_data_daily_job.py
conda run -n gupiao python backtest_data_daily_job.py
conda run -n gupiao python basic_data_other_daily_job.py
conda run -n gupiao python indicators_data_daily_job.py
conda run -n gupiao klinepattern_data_daily_job.py
conda run -n gupiao python strategy_data_daily_job.py
conda run -n gupiao python backtest_data_daily_job.py

conda run -n gupiao python execute_daily_job.py
pause
exit
