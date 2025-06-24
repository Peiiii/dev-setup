# dev-setup

一个可扩展的自动化开发环境配置工具，帮助开发者（首先是前端开发者）在新设备上高效完成环境setup。

## 项目愿景
- 支持一键全自动setup，也支持自定义选择部分setup步骤。
- 以集合（Collection）为单位组织setup脚本，前端setup为第一个集合，未来可扩展到后端、AI、设计师等多种开发场景。
- 提供CLI入口，后续支持UI界面优化体验。
- 项目开源，帮助更多开发者高效上手新环境。

## 快速开始
1. 安装依赖：
   ```bash
   npm install inquirer
   ```
2. 运行CLI：
   ```bash
   node cli/index.js
   ```
3. 按提示选择要执行的setup集合（目前支持前端开发环境）。

## 目录结构
- setup-scripts/  各类setup脚本（如前端、后端等）
- cli/            CLI入口
- .cursor/rules/  项目规则
- prompts/        项目愿景与初始需求

## 扩展性
- 你可以在setup-scripts/中添加更多集合脚本，并在cli/index.js中扩展选择项。
- 未来可集成UI界面，提升体验。

## 使用Docker测试setup脚本

1. 构建镜像并运行setup脚本：
   ```bash
   bash test-in-docker.sh
   ```
2. 你也可以手动执行：
   ```bash
   docker build -t dev-setup-test .
   docker run --rm -v $(pwd)/setup-scripts:/home/devuser/setup-scripts dev-setup-test bash -c 'cd setup-scripts && bash frontend.sh'
   ```

这样可以保证在"干净"的环境下测试setup脚本，便于持续集成和开源贡献。

---

本项目灵感与愿景参考于[prompts/initial-question.md](prompts/initial-question.md)。
