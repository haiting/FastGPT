<div align="center">

<a href="https://tryfastgpt.ai/"><img src="/.github/imgs/logo.svg" width="120" height="120" alt="fastgpt logo"></a>

# FastGPT
FastGPT 是一个 AI Agent 构建平台，提供开箱即用的数据处理、模型调用等能力，同时可以通过 Flow 可视化进行工作流编排，从而实现复杂的应用场景！

详情可查看 <a href="./README.md">简体中文</a>
</div>

## 快速开始后端服务
```bash
cd docer
docker compose up -d
```

## 快速开始前端本地服务
```bash
# 根目录下 - 安装依赖
pnpm i

# 启动本地服务
cd projects/app
pnpm dev
```

## 部署打包
```bash
# 根目录下
chmod +x /docker/deploy.sh

./docker/deploy.sh
```