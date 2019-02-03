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
