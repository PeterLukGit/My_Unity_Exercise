using UnityEngine;
using System.Collections;

public class Skill : MonoBehaviour {


    public float coldTime = 2;

    private UISprite sprite;
    private bool isColding = false;//是否正在冷却

    void Awake() {
        sprite = transform.Find("Sprite").GetComponent<UISprite>();
    }

    void Update() {

        if (Input.GetKeyDown(KeyCode.A) && isColding==false ) {
            //
            //1.释放技能 创建粒子系统 显示技能特效 
            //2.ui上显示技能冷却效果
            sprite.fillAmount = 1;
            isColding = true;
        }

        if (isColding) {
            sprite.fillAmount-=(1f / coldTime) * Time.deltaTime;
            if (sprite.fillAmount <= 0.05f) {
                isColding = false;
                sprite.fillAmount = 0;
            }
        }
    }

}
