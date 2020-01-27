# Unity 輕量級渲染管線的使用與訂製
## 講者：成亮

## 可程式設計渲染管線（SRPs）
使用Ｃ＃開發
原始程式碼 : [https://github.com/Unity-Technologies/ScriptableRenderPipeline](https://)
開發者可以定義自己的渲染方案
Unity提供兩份模板(LWRP and HDRP)
(來不及拍，待補充)
## 輕量級渲染管線（LWRP）
基於核心SRP APIs搭建
充分考慮移動平台性能進行開發
適配多平台
使用方便易於擴展
Out of preview in 2019.1
## LWRP與BuildIn管線的對比

| 特性 | BuildIn | LWRP | Notes |
| -------- | -------- | -------- | -------- |
|Shading|Mutiple Passes|Single Passes||
|Directional Lights|Unlimited|1|2019.2 above 1|
|Per-Object|Unlimited|4|2019.3 above 4|
|Per-Camera|Unlimited|16|2019.2 above 16|
|Batching|Static/Dynamic|SRP Batcher /Static/Dynamic|Dynamic in research
|Scriptable Rander Pass|Not Supported|Supported|2019.1
|Custom Renderers|Not Supported|Supported|2019.1
|Shadow Mask|Supported|2019.3|
|Deferred Rendering|Supported|2019.3|
|PBR|Supported|Supported|



## 光照
* 即時光照
  * 按照每個物體進行光照剔除
  * 在一個批次進行渲染
  * 針對每個物體的限制
    1盞主方向燈、4盞附加光(Point/Spot)
  * 每個相機中總共16盞可見光
* 基於物理的光線衰減
  * 只受強度控制，不受範圍影響
## 性能對比(LWRP vs. Built-in)
* 性能測試點：
  * Fill Rate
  * Drawcalls GPU
  * Drawcalls CPU
  * Bandwidth
* 性能測試工程(專案)：
  https://github.com/Unity-Technologies/PotatoBenchmark
* 性能提升
根據各個指標進行效能對比測試
* Trash Dash - LWRP Version
  * 無光照LWRP版Endless Runner Game實例：
  https://github.com/Unity-Technologies/EndlessRunnerSampleGame

## 參數配置
* 獲取相機深度圖和顏色圖
Opaque Texture提供場景快照，類似於GrabPass，但性能更好
ShaderGrap通過Scene Color和Scene Depth節點獲取以上資訊
* 開啟LWRP的流程
Windows>PackageManager>LWRP
創建Pipeline配置文件
* 玻璃折射Shader
在LWRP下無法使用其他Shader
只能創建Shader Graph
比較Shader在LWRP下聲明與函數的差異

## LWRP Shader
### Shader
* 新的Shader庫
Core和Lightweight RP庫
更小的 'chunk'
* 相容性
LWRP Pachage中默認提供LWRP相容Shaders
沒有提供Surface Shader
Unlit Built-in Shaders仍然可以渲染
* Shader Graph
自動生成LWRP Shader
可以查看/編輯生成的Shader

#### 自訂LWRP Shader
* 暫時無法再工程(專案)中直接創建，可以使用官方提供的一個LWRP PBR示例來擴展
https://gist.github.com/phi-lira/225cd7c5e8545be602dca4eb5ed111ba
* LWRP和Built-in Shader的差異
https://github.com/johnsietsma/ExtendingLWRP/wiki/LWRPShaders
* 在所有著色器中包含"Packages/com.unity.render-pipelines.lightweight/ShaderLibrary/Core.hlsl"。這將包含著色器變數和您需要的大多數實用程式功能。類似於UnityCG.chinc。
* 如果聲明屬性為UnityPerMaterial，則屬性會保存於CBUFFER中，SRP就可以在幀之間緩存材質屬性，並顯著降低每個繪製調用的成本。每個LWRP著色器在* Input.hlsl中定義他們的常量。您可以查看Input.hlsl以獲取示例。

#### SRP Batcher Demo
* 未開啟時Demo有5000多個Batchers
* 開啟後Draw Call只有72個批次
* 透過使用SRP Batcher將會大幅優化
#### 自訂渲染器（Renderer）
* 簡單且易於擴展
* 通過自訂(Features)功能擴展渲染器
* Features可自訂渲染批次(Render Passes):
 執行command buffers
 繪製物體
 創建貼圖
 配置目標
* 在渲染器設定檔中配置Features
* 渲染效果實例
#### Demo - Custom Renderer
* 讓武器有一個好的比例
* 避免武器穿透牆壁的問題
* 正確繪製透明液體和容器
* Demo:
https://github.com/Unity-Technologies/LWRP-CustomRendererExamples
#### Classes
* LightweightRenderPipelineAsset
* LightweightRenderPipeline
* ScrpitableRender
*  ForwardRender
* ScriptableRendererFeature
*  CutomFeature
* ScriptableRenderPass
#### 自訂義等級
Use the more appropriate for your project. From simpler, to more powerful:
1. Use LWRP as it is + Shader Graph
2. Use LWRP + provided Custom Render Passes
3. Script your own Custom Render Passes on top of LWRP
4. Implement your own Renderer
5. Build your own SRP form scratch




---
###### tags: `2019TGDF` `台北遊戲開發者論壇` `共筆筆記`