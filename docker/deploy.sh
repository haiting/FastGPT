#!/bin/bash

# 获取项目根目录路径（即脚本的父目录的父目录）
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# 构建前端镜像，使用淘宝镜像加速
docker build -f "$ROOT_DIR/projects/app/Dockerfile" \
  -t sinobest-fastgpt/fastgpt:v4.9.6 "$ROOT_DIR" \
  --build-arg name=app --build-arg proxy=taobao

# 使用项目根目录作为上下文，指定 docker-compose 文件路径
docker compose -f "$ROOT_DIR/docker/docker-compose.yml" down
docker compose -f "$ROOT_DIR/docker/docker-compose.yml" up -d
