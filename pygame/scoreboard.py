import pygame.font
from pygame.sprite import Group
from  ship import Ship

class Scoreboard():
    """顯示的分類"""

    def __init__(self, ai_setting, screen, stats):
        """初始化顯示得分及屬性"""
        self.screen = screen
        self.screen_rect = screen.get_rect()
        self.ai_setting = ai_setting
        self.stats = stats

        # 顯示得分的字體設定
        self.text_color = (30, 30, 30)
        self.font = pygame.font.SysFont(None, 48)

        # 準備初始顯示信息
        self.prep_score()
        self.prep_high_score()
        self.prep_level()
        self.prep_ship()

    def prep_score(self):
        """將得分渲染成圖形"""
        # round函式，是精確到小數點幾位，-1就是到個位數
        round_sour = int(round(self.stats.score, -1))
        # 這"{:,}" 是一個字串格式設置
        score_str = "{:,}".format(round_sour)
        self.score_image = self.font.render(
            score_str, True, self.text_color, self.ai_setting.bg_color)

        # 將得分顯示在右上角
        self.score_rect = self.score_image.get_rect()
        self.score_rect.right = self.screen_rect.right - 20
        self.score_rect.top = 20

    def prep_high_score(self):
        """渲染最高分"""
        high_score = int(round(self.stats.high_score, -1))
        high_score_str = "{:,}".format(high_score)

        self.high_score_image = self.font.render(
            high_score_str, True, self.text_color, self.ai_setting.bg_color)

        # 將最高分顯示在螢幕中央
        self.high_score_rect = self.high_score_image.get_rect()
        self.high_score_rect.centerx = self.screen_rect.centerx
        self.high_score_rect.top = self.screen_rect.top

    def prep_level(self):
        """將遊戲等級，渲染成圖片"""
        self.level_image = self.font.render(
            str(self.stats.level), True, self.text_color, self.ai_setting.bg_color)

        # 將等級放到得分下面
        self.level_rect = self.level_image.get_rect()
        self.level_rect.right = self.screen_rect.right
        self.level_rect.top = self.score_rect.bottom + 10

    def prep_ship(self):
        """顯示還有多少船"""
        self.ships = Group()
        for ship_number in range(self.stats.ship_left):
            ship =Ship(self.ai_setting,self.screen)
            ship.rect.x = 10 +ship_number *ship.rect.width
            ship.rect.y = 10
            self.ships.add(ship)


    def show_score(self):
        """顯示分數"""
        self.screen.blit(self.score_image, self.score_rect)
        self.screen.blit(self.high_score_image, self.high_score_rect)
        self.screen.blit(self.level_image, self.level_rect)

        # 顯示飛船
        self.ships.draw(self.screen)