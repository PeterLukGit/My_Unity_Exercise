# My_Unity_Exercise

# 這裡是存放個人Unity練習檔，部分圖檔或是資料，著作權歸原作者所有如有侵權請告之

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


## 16.FairyGUI (My_Unity_Exercise\FGUI)

FGUI，跟UGUI NGUI，不同是UGUI NGUI是在Unity中是以"一個物件(組件)"為原則，最多再加上空物件整理，

並且事件是寫好類似UnityEvent扔進去就可以，

FGUI，是以一個個"場景"(就是UI的整體布局)，雖然可以將小組件(例:Button)包好後再放入大組件(例:列表視窗)製作，

而程式部分，除部分UI FGUI會自動用好(例:關閉按鈕)，剩下的就要自己寫，但目前看來整體不難，難在資料傳遞以及動態新增UI(老師沒教)

FGUI在Unity中是UI攝影機一個，而UI場景是調用後才生成，並帶入顯示

一切著作權歸 FairyGUI官方、Siki學院所有

官網
www.fairygui.com

Siki學院
http://www.sikiedu.com/course/139

## 17.ShaderGraph 球形力場 (My_Unity_Exercise\ShaderGraph 球形力場)

這是網路教學，原本想ShaderForge 想改成ShaderGraph 結果發現作者有提供 ShaderGraph 節點，

所以到後面就做出來，然後改改幾個小地方學學

這邊最主要是 ShaderGraph Normal 跟 ShaderForge Normal 是不一樣的

ShaderForge 可以用 Normal 進行位移

而ShaderGraph 是利用 Position 進行位移 ，所以這邊 Normal 是沒用的 要改成 Position + Normal 來達成效果

而 Noise 部分 就必須計算過 平面UV 是不行的 要用Position 或是 Normal 帶入 UV運算才行

PS: 球是炭20球 很好用

一切著作權歸原作者所有

原作者(包含球製作)

https://www.youtube.com/watch?v=i2w0p_mV8_g&t=113s
 
Position + Normal 變形

https://www.youtube.com/watch?v=vh85pzT959M

## 18.ShaderGraph 球形 (My_Unity_Exercise\ShaderGraph 球)

這是在 Youtube 上 Shader Forge 製作

圓滑變到菱角效果做得怪怪的(預估是 Object Normal算圖 出現誤差(跟圖形Normal比較的話))

基本都做出來了，算圖用xNormal 3.19.3 (x64)計算

把高低模進去算出來的，但是Normal有點誤差

把模型UV重新製作

UV0 是亂亂UV 計算 Normal

UV1 是普通UV 

UV2 是一顆球UV，用作Time漸層

一切著作權歸原作者所有

https://www.youtube.com/watch?v=_IwlpwEJ3lE&list=PLHkZsIwT_SixXK95l0IHaCTwaRKqzGYiC


## 19.Unity如何制作弹孔效果 (My_Unity_Exercise\Unity如何制作弹孔效果)

Unity Taiwan 教學

在低清通道下

就是彈孔圖片在射線位置，同時將旋轉設定為該位置Normal方向

用高清通道(HDRP)

用貼花組件就可以了

一切著作權歸原作者所有

https://www.youtube.com/watch?v=9Z3VMXJUPw4


## 20.ShaderGraph 碰觸邊緣發亮 (My_Unity_Exercise\ShaderGraph 碰觸邊緣發亮)

原理看不懂

只能大略知道是，深度節點，螢幕節點，相減，之後就看不懂

一切著作權歸原作者所有

https://www.youtube.com/watch?v=ayd8L6ZyCvw

## 21.Unity FSM 有限狀態機 (My_Unity_Exercise\Unity FSM 有限狀態機)

實際上整體程式碼很簡單
範例中一堆程式碼，大部分都是防呆防例外
這結構精妙之處就再
Dictionary<Transition, StateID>
List<FSMState> states
因為有Dictionary的變數再，就不必寫很多IF判斷直接把判斷給省去，因為存在再Dictionary就是轉換剩下都不是
這樣只要再Enum裡寫好Transition和State，就可以自動切換
而只要在函式中寫好防錯，基本就能好好運行，
不必說以前學的，是把State繼承一個接口，雖然這寫法比較簡單，但判斷會變多
這種方法雖然不直觀但框架弄好，剩下只要寫Update裡該做什麼
切換就呼叫PerformTransition就可以

一切著作權歸原作者所有

原文
http://wiki.unity3d.com/index.php/Finite_State_Machine

翻譯
https://www.twblogs.net/a/5b8cfa142b7177188338198e

畫圖
https://www.draw.io/

## 22.Unity ECS練習 (My_Unity_Exercise\ECS 方塊波浪)

利用ECS製作方塊波浪，只應用到基礎，沒有用到Job之類的

一切著作權歸原作者所有

方塊波浪
https://www.youtube.com/watch?v=gdSFs0PeBNQ

ECS基礎
https://www.youtube.com/watch?v=ILfUuBLfzGI

Unity Taiwan ECS
https://www.youtube.com/watch?v=Kn7RtsTI_wI&t=423s
https://www.youtube.com/watch?v=qILR9gLzmVA&t=240s

## 23.Unity Job練習 (My_Unity_Exercise\Job System)

Job System 練習，並未加入ECS

Job System
https://www.youtube.com/watch?v=C56bbgtPr_w

## 24.Unity ECS練習2  2D渲染 (My_Unity_Exercise\ECS\ECS 2D渲染)

ECS並沒有針對2D有特殊設計，所以要在ECS使用2D必須用Mesh渲染出2D

生成Mesh 因為ECS不支援2D Sprite
所以要用3DMesh來渲染

Mesh生成分三步驟
1. 設定點（就是點在世界座標上的位置）
2. 設定UV（就是UV，就是那三角形對著的UV平面（應該））
3. 設定渲染的三角形，把第一步驟的點，依照順序渲染出來（要照順時鐘渲染），當成是設定渲染的三角面

ECS 2D
https://www.youtube.com/watch?v=6eV9NR3Vb9U

Mesh 渲染
https://blog.csdn.net/ecidevilin/article/category/9266800
https://blog.csdn.net/ecidevilin/article/details/52443127
https://blog.csdn.net/ecidevilin/article/details/52456107
https://www.jianshu.com/p/7cd99a05cfea
https://www.cnblogs.com/jeason1997/p/4825981.html

## 25.Unity Job練習2  Job純數據輸出 (My_Unity_Exercise\Job System\Job System2)


 講解
因為Job工作完後資料並沒保存（看起來是.....）
所以要用在Job外的陣列來存放

網址
https://www.youtube.com/watch?v=YBrCR9rUOaA

## 26.Unity ECS練習3  追蹤目標 (My_Unity_Exercise\ECS\ECS 追蹤目標)

講解
就是方塊追蹤目標
主要講解Tag以及刪除增加組件


網址
https://www.youtube.com/watch?v=t11uB7Gl6m8
https://unitycodemonkey.com/video.php?v=t11uB7Gl6m8

https://docs.unity3d.com/Packages/com.unity.entities@0.0/api/Unity.Entities.EntityManager.html

