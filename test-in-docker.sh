#!/bin/bash
set -e

echo "[1/3] 构建测试镜像..."
docker build -t dev-setup-test .

echo "[2/3] 启动容器并挂载setup-scripts目录..."
docker run --rm -v $(pwd)/setup-scripts:/home/devuser/setup-scripts dev-setup-test bash -c 'cd setup-scripts/frontend && bash all.sh'

echo "[3/3] 测试完成！" 