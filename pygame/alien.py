import pygame
from pygame.sprite import Sprite


class Alien(Sprite):
    """表示外星人類別"""

    def __init__(self, ai_setting, screen):
        """初始化"""
        super(Alien, self).__init__()
        self.screen = screen
        self.ai_setting = ai_setting

        # 讀取圖片，以及設定其矩形屬性
        self.image = pygame.image.load('alien.bmp')
        self.rect = self.image.get_rect()

        # 每個外星人從左上角出現
        self.rect.x = self.rect.width
        self.rect.y = self.rect.height

        # 存放外星人位置數據
        self.x = float(self.rect.x)

    def blitme(self):
        """在指定位置畫外星人"""
        self.screen.blit(self.image, self.rect)

    def check_edges(self):
        screen_rect = self.screen.get_rect()
        if self.rect.right >= screen_rect.right:
            return True
        elif self.rect.left <= 0:
            return True

    def update(self):
        """向右移動外星人"""
        self.x += (self.ai_setting.alien_speed_factor *
                   self.ai_setting.fleet_direction)
        self.rect.x = self.x
