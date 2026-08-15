---
name: website-launch-auditor
description: "Audit a website, landing page, or web application before launch across release readiness, technical SEO, conversion clarity, and operational basics. Use when a user asks whether a site is ready to publish, needs a prioritized issue list, or needs a read-only launch review. Do not deploy, alter production settings, or access private analytics/accounts."
---

# 网站上线审查

作者：林勇

以只读方式审查当前项目或用户提供的网址；先报告，未经用户明确要求不改代码、不部署。

## 审查范围

按四个维度检查，并只报告可核实的发现：

1. **上线可用性**：关键页面、导航、表单/主要动作、移动端、错误页与性能风险。
2. **SEO 基础**：页面标题、描述、单一 H1、可索引性、规范链接、站点地图/robots（如适用）、图片替代文本和分享预览。
3. **转化清晰度**：目标用户、价值主张、主行动按钮、信任信息、价格/限制条件和联系路径。
4. **运营准备**：隐私/条款入口、反馈或支持渠道、监测需求提示、回退与验收责任人。

## 工作方式

1. 先确认审查对象、目标用户、主要转化动作和上线环境。
2. 检查页面与代码中能验证的内容；没有访问权限时，明确列为“待人工确认”。
3. 按严重程度排序：阻塞上线 / 应尽快修复 / 可优化。
4. 对每项给出页面或文件位置、问题、影响、最小修复建议和验收方式。
5. 最后给出结论：可上线 / 修复后上线 / 暂不建议上线。

## 输出模板

| 优先级 | 位置 | 问题 | 影响 | 最小修复 | 验收方式 |
|---|---|---|---|---|---|

随后给出：已通过项、待人工确认项、上线结论和按顺序执行的修复清单。

## 边界

- 不把“未检查到”写成“已经通过”。
- 不读取账号、统计后台、密钥、Cookie 或真实用户数据。
- 不执行部署、域名/DNS、支付、邮件或生产环境修改。

## 示例

“使用 $website-launch-auditor 审查当前项目。按上线可用性、SEO、转化、运营准备输出问题与优先级；只读检查，不修改代码。”
