import sys
import pygame
from pygame.sprite import Group

from Setting import Setting
from ship import Ship
from alien import Alien
import game_function as gf
from game_stats import GameStats
from button import Button
from scoreboard import Scoreboard


def run_game():
    # 初始化pygame
    pygame.init()

    """
    # 設定一個1280 X 800的螢幕畫面
    screen = pygame.display.set_mode((1280, 800))
    # 設定標題
    pygame.display.set_caption("Alien Invasion")
    # 設定顏色[]()都行，只是()不可改數據
    bg_color = (230, 230, 230)
    """
    # 更改成用Setting 腳本的
    ai_setting = Setting()
    screen = pygame.display.set_mode(
        (ai_setting.screen_width, ai_setting.screen_height))
    pygame.display.set_caption("Alien Invasion")

    # 新增飛船類
    ship = Ship(ai_setting, screen)

    # 新增外星人類
    alien = Alien(ai_setting, screen)

    # 新增子彈編組
    bullets = Group()

    # 新增外星人編組
    aliens = Group()

    gf.create_fleet(ai_setting, screen, ship, aliens)

    # 遊戲資料
    stats = GameStats(ai_setting)

    # 遊戲開始按鈕
    play_button = Button(ai_setting, screen, "Play")

    # 新增遊戲統計實例
    sb = Scoreboard(ai_setting, screen, stats)

    # 遊戲循環
    while True:
        """
        # 透過pygame監測輸入設定
        for event in pygame.event.get():
            # 當監測到玩家按下關閉按鈕，關閉視窗
            if event.type == pygame.QUIT:
                sys.exit()
        # 更新視窗
        # screen.fill(bg_color)
        screen.fill(ai_setting.bg_color)

        # 畫飛船
        ship.blitme()

        # 顯示最近繪製的視窗
        pygame.display.flip()
        """
        # 滑鼠鍵盤觸發事件
        gf.check_event(ai_setting, screen, stats, sb, play_button, ship, aliens, bullets)

        if stats.game_active:
            # 飛船移動
            ship.update()
            # 子彈移動
            gf.update_bullets(ai_setting, screen, stats,
                              sb, ship, aliens, bullets)
            # 移動外星人
            gf.update_aliens(ai_setting, stats, sb, screen, ship, aliens, bullets)

        # 更新畫面
        gf.update_screen(ai_setting, screen, stats, sb, ship, aliens, bullets, play_button)


run_game()
