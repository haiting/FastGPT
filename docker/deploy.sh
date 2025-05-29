#!/bin/bash

# 构建镜像，使用淘宝镜像加速
docker build -f ./projects/app/Dockerfile -t sinobest-fastgpt/fastgpt:v4.8.1 . \
  --build-arg name=app --build-arg proxy=taobao
