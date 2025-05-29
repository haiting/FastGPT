#!/bin/bash

# 构建前端镜像，使用淘宝镜像加速
docker build -f ./projects/app/Dockerfile -t sinobest-fastgpt/fastgpt:v4.9.6 . \
  --build-arg name=app --build-arg proxy=taobao

# 切换到脚本所在目录
cd "$(dirname "$0")"

# 启动前后端容器
docker-compose down
docker-compose up -d