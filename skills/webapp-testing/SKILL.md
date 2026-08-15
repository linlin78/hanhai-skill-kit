---
name: webapp-testing
description: "Plan and run minimal, repeatable functional and regression tests for a website or web application, including page load, navigation, forms, and critical user journeys. Use when a user asks to test a web app before release or verify a fix. Do not test production write actions, real payments, real user accounts, or destructive actions without explicit test-safe scope."
---

# 网页应用测试

作者：林勇

为当前网页应用建立最小必要的测试集，优先验证用户真正会走的流程，而不是堆大量无关测试。

## 先确定边界

确认测试地址、是否为本地/预览环境、核心用户路径、可用测试数据和明确禁止操作。默认只读或使用测试数据；不提交真实表单、不下单、不支付、不删除内容。

## 测试顺序

1. **页面可达**：首页和核心页面能打开，无明显报错。
2. **导航与状态**：菜单、返回、跳转和刷新后状态符合预期。
3. **核心动作**：围绕一个主要任务验证输入、校验、提交前提示和结果反馈。
4. **回归检查**：验证本次修改影响的页面和相邻流程。
5. **小屏检查**：确认主要页面在常见窄屏下没有遮挡、无法点击或横向溢出。

## 输出格式

| 编号 | 流程 | 前置条件 | 操作 | 预期结果 | 实际结果 | 状态 |
|---|---|---|---|---|---|---|

失败项必须补充：复现步骤、影响范围、建议优先级和最小修复方向。最后列出“可发布/修复后复测/暂不建议发布”。

## 自动化测试原则

- 只有项目已经使用 Playwright 等测试工具时，才在现有结构中补充最小测试；不要把 `node_modules`、浏览器缓存或测试录像打包进 Skill。
- 选择稳定的文字、标签或测试标识定位元素；不要依赖脆弱的屏幕坐标。
- 每次先运行最小测试集，再扩展覆盖范围。
- 不访问后台账号、Cookie、密钥或真实用户数据；需要登录时要求用户提供专用测试环境和测试账号范围。

## 示例

“使用 $webapp-testing 测试当前项目的首页、模板列表和创建流程。先列测试计划，再在本地或 Preview 环境执行；不触碰生产数据，输出通过项、失败项和复现步骤。”
