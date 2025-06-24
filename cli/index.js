#!/usr/bin/env node

import inquirer from 'inquirer';
import { execSync } from 'child_process';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

(async () => {
  console.log('欢迎使用 dev-setup 自动化工具！');
  const { collection } = await inquirer.prompt([
    {
      type: 'list',
      name: 'collection',
      message: '请选择要执行的setup集合：',
      choices: [
        { name: '前端开发环境', value: 'frontend' },
        // 未来可扩展更多集合
      ],
    },
  ]);

  if (collection === 'frontend') {
    const scriptPath = path.resolve(__dirname, '../setup-scripts/frontend.sh');
    console.log('开始执行前端开发环境setup...');
    execSync(`bash "${scriptPath}"`, { stdio: 'inherit' });
  }
})(); 