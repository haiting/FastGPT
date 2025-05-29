<div align="center">

<a href="https://tryfastgpt.ai/"><img src="/.github/imgs/logo.svg" width="120" height="120" alt="fastgpt logo"></a>

# FastGPT
FastGPT 是一个 AI Agent 构建平台，提供开箱即用的数据处理、模型调用等能力，同时可以通过 Flow 可视化进行工作流编排，从而实现复杂的应用场景！

详情可查看 <a href="./README.md">简体中文</a>
</div>


## 1. 本地快速开始
### 1.1 快速启动后端服务
- 修改 `./docker/dev-server.sh` 文件的内容

```bash
FE_DOMAIN=http://{修改为你的电脑IP地址}:8802
```

- 修改 `docker-compose.yml` 的内容

使用 `fastgpt` 官网的镜像：`ghcr.io/labring/fastgpt:v4.9.6`

```bash
# 根目录下 - 启动后端服务
chmod +x ./docker/dev-server.sh

./docker/dev-server.sh
```

### 1.2 直接连接已存在的后端服务
如果已经有存在的后端服务，比如【测试服后端】，则修改 `.env.local` 文件的内容，主要需要修改 `API_KEY` 和数据库的地址与端口以及数据库账号的用户名和密码


### 1.3 快速启动前端服务
```bash
# 根目录下 - 安装依赖
pnpm i

# 启动本地服务
cd projects/app
pnpm dev
```

## 2. 部署打包
### 2.1 本地环境部署打包
如果想在本地环境
```bash
# 根目录下 - 构建前端镜像
chmod +x ./docker/deploy.sh

./docker/deploy.sh
```

### 2.2 生成环境部署打包
- 确保 `docker-compose.yml` 的内容
`fastgpt` 的镜像应为：`sinogear/fastgpt:v4.9.6`

```bash
# 根目录下 - 构建前端镜像
chmod +x ./docker/deploy.sh

./docker/deploy.sh 
```