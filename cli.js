#!/usr/bin/env node

const fs = require('fs');
const path = require('path');
const inquirer = require('inquirer');

// 读取集合配置
const collectionsPath = path.join(__dirname, 'setup-collections.json');
const collections = JSON.parse(fs.readFileSync(collectionsPath, 'utf-8')).collections;

(async () => {
  // 选择集合
  const { collectionName } = await inquirer.prompt([
    {
      type: 'list',
      name: 'collectionName',
      message: '请选择要执行的setup集合:',
      choices: collections.map(c => ({ name: c.title, value: c.name }))
    }
  ]);
  const collection = collections.find(c => c.name === collectionName);

  // 选择步骤
  const { steps } = await inquirer.prompt([
    {
      type: 'checkbox',
      name: 'steps',
      message: '请选择要执行的setup步骤:',
      choices: collection.steps.map(s => ({ name: s.title, value: s.id })),
      default: collection.steps.map(s => s.id)
    }
  ]);

  // 执行步骤（MVP阶段仅echo模拟）
  for (const stepId of steps) {
    const step = collection.steps.find(s => s.id === stepId);
    console.log(`\n==== 执行步骤: ${step.title} ====`);
    // 这里后续可调用实际脚本
    console.log(`[模拟] 执行脚本: ${step.script}`);
  }

  console.log('\n全部选择的setup步骤已执行（MVP阶段为模拟）。');
})(); 