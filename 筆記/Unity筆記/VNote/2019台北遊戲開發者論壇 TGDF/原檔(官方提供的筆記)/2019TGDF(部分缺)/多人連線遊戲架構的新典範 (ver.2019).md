# 多人連線遊戲架構的新典範 (ver.2019)
## 講者：胡學峰




# Dominating architecture

- advanced replay
    - 只需要做淡定 像是撲克，麻將 (各自模擬碰撞)
- client hosted
    - 百人大逃殺類型 (GCP + VM) (碰撞由單一運算  把碰撞的狀態  再傳給每個 client)
    - 但是 MOBA 類型就不適合
- Dterministic
    - 決論式機制，由客戶端直接做決策判定，各自模擬物理碰撞，但是結果會完全一致
    - 像是荒野亂鬥

# QUANTUM

* *Deterministic Engine* for fast paced realtime 確保大家 input 如果是一樣的 output 就會是一樣 技巧像是 物理碰撞前的 input 都用 INT



---
###### tags: `2019TGDF` `台北遊戲開發者論壇` `共筆筆記`