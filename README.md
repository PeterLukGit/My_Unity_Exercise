# My_Unity_Exercise
## 1.大话链式编程之Audio改造术 

  http://www.manew.com/thread-139396-1-1.html 
  
  http://www.manew.com/thread-139408-1-1.html

## 2.ShaderForge 練習

教學網址

重大:: 
Texture 的 UV 意思是說
"以輸入數值"來對應相對圖片顏色 例:輸入(0.5,0.5)就是這張圖片正中間顏色

UV Coordinates 指的就是 這模型的UV 所以 Texture 的 UV 數值需加入 該模型 UV

https://space.bilibili.com/20508311/#/channel/detail?cid=15815

插件

ShaderForge 1.37

unity 官方

PostProcessing

## 3.液態物理(Liquid Physics2D)

插件 : Liquid Physics2D

講解原理，

1.有個場景負責運算邏輯結構，就是那些水實際上就是一顆顆小球

2.把攝影機拍到的側錄好變成一張圖片(Render Textures)(每禎)

3.把每禎圖片用個Shader運算下

4.直接在旁邊渲染出來，然後呈現給玩家

https://blog.csdn.net/RICKShaozhiheng/article/details/78314520

## 4.反射探針(reflection Probe)

reflection Probe會將自己範圍內所偵測到，
能夠被反射的物件，將它更新到場景的skybox中。

簡單就是

reflection Probe 會製作在範圍內的 cube map

在範圍內的能反射物體就會套用此cube map

用以節省效能，因為不用計算整個大場景

## 5.微元素ShaderForge案例

http://www.element3ds.com/forum.php?mod=viewthread&tid=152064

有放離線網頁包

ShaderForge裡也有註解，裡面有20多個範例

## 6.Light Probe 光偵測子

這東西就是

Unity 烘焙完貼圖後 因為關閉燈光 會導致 Player(就是移動物體) 因為沒辦法跟 Player互動導致很不自然

所以用這東西設定一區域

光影變化大就多一點球，光影變化小就少一點

物體進入這範圍就會受到光影改變

物體上的Use Light Probes要打勾

就像範例的方塊，進入到黃色區域就帶點黃色，到藍色就有點藍，進陰影就變黑但陰影三角形處就需要多一點球來判定

https://www.youtube.com/watch?v=pzbebc0Ryv8

https://www.jianshu.com/p/9b5eef076247


## 7.攝影機子母畫面

就是攝影機渲染疊加

1號攝影(優先) 渲染畫面只有 一部分 用X Y W H 控制

2號攝影(後面) 渲染剩下畫面

在AEG001000 pdf 裡有

## 8.粒子系統力場

這是粒子系統力量組件範例

粒子系統裡
External Forces 
要打開

https://docs.unity3d.com/Manual/PartSysExtForceModule.html

## 9.Windows系統Unity3D中的快捷鍵

Windows系統Unity3D中的快捷鍵

組合鍵 鍵 功能

File 文件

Ctrl N New Scene 新建場景

Ctrl O Open Scene 打開場景

Ctrl S Save Scene 保存

Ctrl Shift S Save Scene as 保存場景為

Ctrl Shift B Build Settings... 編譯設置...

Ctrl B Build and run 編譯並運行

Edit 編輯

Ctrl Z Undo 撤消

Ctrl Y Redo 重做

Ctrl X Cut 剪切

Ctrl C Copy 拷貝

Ctrl V Paste 粘貼

Ctrl D Duplicate 複製

Shift Del Delete 刪除

F Frame selected 選擇的幀

Ctrl F Find 查找

Ctrl A Select All 全選

Ctrl P Play 播放

Ctrl Shift P Pause 暫停

Ctrl Alt P Step 停止

Assets 資源

Ctrl R Refresh 刷新

Game Object 遊戲對象

Ctrl Shift N New Empty 新建空遊戲對象

Ctrl Alt F Move to view 移動到視圖

Ctrl Shift F Align with view 視圖對齊

Window

Ctrl 1 Scene 場景

Ctrl 2 Game 遊戲

Ctrl 3 Inspector 檢視面板

Ctrl 4 Hierarchy 層次

Ctrl 5 Project 項目

Ctrl 6 Animation 動畫

Ctrl 7 Profiler 分析器

Ctrl 8 Particle Effect 粒子效果

Ctrl 9 Asset store 資源商店

Ctrl 0 Asset server 資源服務器

Ctrl Shift C Console 控制台

Ctrl TAB Next Window 下一個窗口

Ctrl Shift TAB Previous Window 上一個窗口

Ctrl Alt F4 Quit 退出

Tools 工具

Q Pan 平移

W Move 移動

E Rotate 旋轉

R Scale 縮放

Z Pivot Mode toggle 軸點模式切換

X Pivot Rotation Toggle 軸點旋轉切換

Ctrl LMB Snap 捕捉 （Ctrl+鼠標左鍵）

V Vertex Snap 頂點捕捉

Selection

Ctrl Shift 1 Load Selection 1 載入選擇集

Ctrl Shift 2 Load Selection 2

Ctrl Shift 3 Load Selection 3

Ctrl Shift 4 Load Selection 4

Ctrl Shift 5 Load Selection 5

Ctrl Shift 6 Load Selection 6

Ctrl Shift 7 Load Selection 7

Ctrl Shift 8 Load Selection 8

Ctrl Shift 9 Load Selection 9

Ctrl Alt 1 Save Selection 1 保存選擇集

Ctrl Alt 2 Save Selection 2

Ctrl Alt 3 Save Selection 3

Ctrl Alt 4 Save Selection 4

Ctrl Alt 5 Save Selection 5

Ctrl Alt 6 Save Selection 6

Ctrl Alt 7 Save Selection 7

Ctrl Alt 8 Save Selection 8

Ctrl Alt 9 Save Selection 9

Mac系統Unity3D中的快捷鍵

組合鍵 鍵 功能

File 文件

CMD N New Scene 新建場景

CMD O Open Scene 打開場景

CMD S Save Scene 保存

Shift CMD S Save Scene as 保存場景為

Shift CMD B Build Settings... 編譯設置...

CMD B Build and run 編譯並運行

Edit 編輯

CMD Z Undo 撤消

Shift CMD Z Redo 重做

CMD X Cut 剪切

CMD C Copy 拷貝

CMD V Paste 粘貼

CMD D Duplicate 複製

Shift Del Delete 刪除

CMD F Frame selected 選擇的幀

CMD F Find 查找

CMD A Select All 全選

CMD P Play 播放

Shift CMD P Pause 暫停

Alt CMD P Step 停止

Assets 資源

CMD R Refresh 刷新

Game Object 遊戲對象

Shift CMD N New Empty 新建空遊戲對象

Alt CMD F Move to view 移動到視圖

Shift CMD F Align with view 視圖對齊

Window

CMD 1 Scene 場景

CMD 2 Game 遊戲

CMD 3 Inspector 檢視面板

CMD 4 Hierarchy 層次

CMD 5 Project 項目

CMD 6 Animation 動畫

CMD 7 Profiler 分析器

CMD 8 Particle Effect 粒子效果

CMD 9 Asset store 資源商店

CMD 0 Asset server 資源服務器

Shift CMD C Console 控制台

Tools 工具

Q Pan 平移

W Move 移動

E Rotate 旋轉

R Scale 縮放

Z Pivot Mode toggle 軸點模式切換

X Pivot Rotation Toggle 軸點旋轉切換

CMD LMB Snap 捕捉 （Ctrl+鼠標左鍵）

V Vertex Snap 頂點捕捉

Selection

Shift CMD 1 Load Selection 1 載入選擇集

Shift CMD 2 Load Selection 2

Shift CMD 3 Load Selection 3

Shift CMD 4 Load Selection 4

Shift CMD 5 Load Selection 5

Shift CMD 6 Load Selection 6

Shift CMD 7 Load Selection 7

Shift CMD 8 Load Selection 8

Shift CMD 9 Load Selection 9

Alt CMD 1 Save Selection 1 保存選擇集

Alt CMD 2 Save Selection 2

Alt CMD 3 Save Selection 3

Alt CMD 4 Save Selection 4

Alt CMD 5 Save Selection 5

Alt CMD 6 Save Selection 6

Alt CMD 7 Save Selection 7

Alt CMD 8 Save Selection 8

Alt CMD 9 Save Selection 9
