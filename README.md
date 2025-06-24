# dev-setup

一站式自动化开发环境配置工具，支持前端、后端、AI、数据科学等多种场景，助你在新设备上高效完成开发环境搭建。

> **GitHub Repo:** [Peiiii/dev-setup](https://github.com/Peiiii/dev-setup)

---

## ✨ 项目特色

- **一键全自动**：一条命令完成开发环境搭建
- **原子化脚本**：每个步骤独立、可复用、易扩展
- **多集合支持**：前端、后端、AI等集合可自由切换
- **本地&容器双模式**：支持本机和Docker环境下验证
- **开源友好**：易于贡献和自定义

---

## 🚀 快速开始

### 1. 克隆仓库

```bash
git clone https://github.com/Peiiii/dev-setup.git
cd dev-setup
```

### 2. 本机一键安装（以前端为例）

```bash
bash setup-scripts/frontend/all.sh
```
> 脚本会自动检测/安装 Homebrew、nvm、Node.js、yarn、pnpm、VSCode、Oh My Zsh 及常用插件。

**安装完成后请重启终端或执行：**
```bash
source ~/.zshrc
```

### 3. Docker 环境下测试

确保已安装 Docker，然后运行：

```bash
bash test-in-docker.sh
```
> 该脚本会自动构建 Ubuntu 镜像并在容器内验证 setup 脚本，适合持续集成和开源贡献。

---

## 🛠️ 目录结构

```
setup-scripts/
  frontend/
    01-brew.sh
    02-nvm.sh
    03-node.sh
    04-yarn-pnpm.sh
    05-vscode.sh
    06-ohmyzsh.sh
    07-zsh-plugins.sh
    all.sh           # 一键全装
  # 未来可扩展更多集合（如 backend/ ai/ 等）
test-in-docker.sh   # Docker一键测试脚本
cli/                # CLI入口（可选）
```

---

## 🧩 扩展与自定义

- **添加新集合**：在 `setup-scripts/` 下新建如 `backend/`、`ai/` 目录，编写原子化脚本和 all.sh。
- **自定义步骤**：可单独运行任意原子脚本，如 `bash setup-scripts/frontend/03-node.sh`。
- **集成CLI/GUI**：可基于 `cli/` 目录扩展交互式入口，未来支持UI。

---

## 🤝 贡献指南

1. Fork 本仓库并新建分支
2. 按需添加/修改 setup 脚本
3. 提交 PR，务必使用英文 commit message
4. 推荐在 PR 前用 `bash test-in-docker.sh` 验证脚本可用性

---

## 📄 License

MIT License

---

## 💡 项目愿景

打造开发者开箱即用的自动化环境setup工具，支持多场景、多平台，助力高效开发与团队协作。

---

如需更多帮助或有建议，欢迎提 Issue 或 PR！  
项目主页：[https://github.com/Peiiii/dev-setup](https://github.com/Peiiii/dev-setup)
