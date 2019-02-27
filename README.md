# My_Unity_Exercise

### 這裡是存放個人Unity練習檔，部分圖檔或是資料，著作權歸原作者所有如有侵權請告之

## 1.大话链式编程之Audio改造术 (My_Unity_Exercise/大话链式编程之Audio改造术/)

  http://www.manew.com/thread-139396-1-1.html 
  
  http://www.manew.com/thread-139408-1-1.html

## 2.ShaderForge 練習 (My_Unity_Exercise/ShaderForge/ShaderForge練習/ShaderForge_unity/)

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

## 3.液態物理(Liquid Physics2D) (My_Unity_Exercise/液態物理(Liquid Physics2D)/New Unity Project/)

插件 : Liquid Physics2D

講解原理，

1.有個場景負責運算邏輯結構，就是那些水實際上就是一顆顆小球

2.把攝影機拍到的側錄好變成一張圖片(Render Textures)(每禎)

3.把每禎圖片用個Shader運算下

4.直接在旁邊渲染出來，然後呈現給玩家

https://blog.csdn.net/RICKShaozhiheng/article/details/78314520

## 4.反射探針(reflection Probe) (My_Unity_Exercise/反射探針(區域反射)Reflection Probe/New Unity Project/)

reflection Probe會將自己範圍內所偵測到，
能夠被反射的物件，將它更新到場景的skybox中。

簡單就是

reflection Probe 會製作在範圍內的 cube map

在範圍內的能反射物體就會套用此cube map

用以節省效能，因為不用計算整個大場景

## 5.微元素ShaderForge案例 (My_Unity_Exercise/ShaderForge/ShaderForge微元素案例/)

http://www.element3ds.com/forum.php?mod=viewthread&tid=152064

有放離線網頁包

ShaderForge裡也有註解，裡面有20多個範例

## 6.Light Probe 光偵測子 (My_Unity_Exercise/Light Probe 光偵測子/)

這東西就是

Unity 烘焙完貼圖後 因為關閉燈光 會導致 Player(就是移動物體) 因為沒辦法跟 Player互動導致很不自然

所以用這東西設定一區域

光影變化大就多一點球，光影變化小就少一點

物體進入這範圍就會受到光影改變

物體上的Use Light Probes要打勾

就像範例的方塊，進入到黃色區域就帶點黃色，到藍色就有點藍，進陰影就變黑但陰影三角形處就需要多一點球來判定

https://www.youtube.com/watch?v=pzbebc0Ryv8

https://www.jianshu.com/p/9b5eef076247


## 7.攝影機子母畫面 (My_Unity_Exercise/攝影機子母畫面/)

就是攝影機渲染疊加

1號攝影(優先) 渲染畫面只有 一部分 用X Y W H 控制

2號攝影(後面) 渲染剩下畫面

在AEG001000 pdf 裡有

## 8.粒子系統力場 (My_Unity_Exercise/粒子系統力場/Particle System Force Field/)

這是粒子系統力量組件範例

粒子系統裡External Forces 要打開

https://docs.unity3d.com/Manual/PartSysExtForceModule.html

## 9.Windows系統Unity3D中的快捷鍵

Windows系統Unity3D中的快捷鍵

## 10.特效配合3D動畫

原本要上傳，但看完後只是琢磨在特效部分，並未有其他部分並且也做不出來(沒圖)

原理就是，分解每個特效部分，部分特效使用3D模型當渲染支架

而位移部分只是用Animator幫助

留下教學影片網址(影片聲音很小，基本聽不到)

https://www.bilibili.com/video/av7649769

https://www.bilibili.com/video/av7647599

## 11.後處理 PostProcessing (My_Unity_Exercise/後處理 PostProcessing/PostProcessing/)

PostProcessing V2

1.在 Camera 裡放入 Post-process Layer(參考圖片攝影.png)，然後要設定Layer層

2.在物件下放入Trigger觸發器，然後再放入Post-process Volumes調整

有分 全局渲染與非全局渲染

全局就是整個場景都使用，除非攝影機進入到"非全局"的範圍，便會修改成"非全局"的數據

非全局，就是利用 Trigger "形狀" 放大後的範圍，一旦攝影機進入便會修改數據

## 12.ShaderGraph (My_Unity_Exercise/ShaderGraph/)

Unity自帶圖形化Shader編輯，PackManger要設定好

HD通道 電腦很爛 所以Time跑不出來

https://space.bilibili.com/20508311/video

## 13.Cinemachine (My_Unity_Exercise/Cinemachine/)

Siki學院教的

除一部分外，不太好

Siki學院包裏是，教學的範例檔案

至於另一個隨便做，無法當成案例

還有Youtube有一網址交的不錯

http://www.sikiedu.com/my/course/234

https://www.youtube.com/watch?fbclid=IwAR2XVbgY8-ZZpfeVIwe8EvkV7nUmtJ4ZKMzKFcuYGKd7ObVgw-lWLQrat4Q&feature=youtu.be&v=-FvMGY12LCU&app=desktop

部分資源太大，丟到Google雲端(原檔)，再壓縮檔放Github

一切著作權歸 Siki學院官方所有

## 14.2017Particle System (My_Unity_Exercise/2017Particle System/)

unity 2017官方粒子系統

本Github只是存檔案例而已

一切著作權歸 Unity官方所有

## 15.NGUI (My_Unity_Exercise\NGUI)

Unity NGUI 老師範例檔

一切著作權歸 taikr官方、Siki老師所有

http://www.taikr.com/my/course/34

