# 深入淺出 Unity Shader Graph
## 講者：林宇

> 目前已有16萬的Package Installs/Updates
## Shader Graph
* 可視化Shader編輯器
* Node Based
* Instant feeback
* Pipeline switchable with different Master node(in most case)
> 在Shader graph之前，我們只能用代碼的形式製作Shader
> 如今Shader製作變得更簡單

### Use the Shader Graph or better with coding?
* Shader Graph:
Using built-in SRP Lighting model
* Coding:
Create a custom lighting model
### Master Node
### Sub Graphs
* Represents as a node
* Re-useable
* Sub Graph nested inside Sub Graphs
* Unlimited neseted depth!
* Upgrade safe
### Costom Function Node
#### Costom Function Node - Type: String
#### Costom Function Node - Type: File
### Review the generated shader code
* 對Master Node點右鍵
  可檢視生成代碼
  複製Shader
### Demo
下雨效果
傳送門特效
眼睛效果

### 插件比較
大致上來說，使用Amplify Shader Editor時怎麼建，在Shader Graph裡就怎麼建
### 補充
在HDRP中創建Shader Graph的Diffusion Profile
應在PipelineAsset中的Diffusion Profile List新增此Profile







---
###### tags: `2019TGDF` `台北遊戲開發者論壇` `共筆筆記`