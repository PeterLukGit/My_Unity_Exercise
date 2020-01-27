# Visual Effect Graph 概述與技術要點
## 講者：鮑健運

### 安裝Visual Effect Graph
直接搜尋後安裝(在你的編輯器中)
### 功能要點：
- 藝術家體驗友好的工具
- 功能的可擴展性
- 特效的可擴展性
- 行業趨勢
- 高清晰渲染管線

### CPU粒子與GPU粒子系統


| CPU粒子 | GPU粒子 | 
| -------- | -------- | 
| 數以千計    | 數以百萬計     |
| 簡單   | 複雜 |
| 物理系統     | 基元，有向距離場，深度緩衝區     |
| 遊戲回讀   |     |


### 編輯的層次
↓資產實例配置：調整參數
↓VFX資產製作：節點調整
↓VFX創建/編輯：code層

### Visual Effect Graph 
Context：上下文
- Spawn：生成多少粒子
- Initialize：初始化的值(位子、顏色等等)
- Update：每一時間的變化
- Quad Output：他們怎麼渲染
Block

### 範例網址：https://github.com/Unity-Technologies/VisualEffectGraph-Samples


---
###### tags: `2019TGDF` `台北遊戲開發者論壇` `共筆筆記`