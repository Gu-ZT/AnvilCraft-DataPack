echo off
color 0a
title 自动打包
echo 打包中.....
pip install zipfile39
python .\Tools.py pack
echo 打包成功
pause
