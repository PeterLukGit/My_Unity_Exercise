# My_Unity_Exercise
## 1.大话链式编程之Audio改造术 

  http://www.manew.com/thread-139396-1-1.html 
  
  http://www.manew.com/thread-139408-1-1.html

## 2.ShaderForge 練習

教學網址

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

## 3.反射探針(reflection Probe)

reflection Probe會將自己範圍內所偵測到，
能夠被反射的物件，將它更新到場景的skybox中。

簡單就是
reflection Probe 會製作在範圍內的 cube map
在範圍內的能反射物體就會套用此cube map
用以節省效能，因為不用計算整個大場景
