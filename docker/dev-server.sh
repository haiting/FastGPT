#!/bin/bash
# 切换到脚本所在目录
cd "$(dirname "$0")"

# 启动前后端容器
docker-compose down
docker-compose up -d