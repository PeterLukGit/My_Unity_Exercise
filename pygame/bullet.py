import pygame
from pygame.sprite import Sprite


class Bullet(Sprite):

    def __init__(self, ai_setting, screen, ship):
        super(Bullet, self).__init__()
        self.screen = screen

        # 先設定一個子彈地矩形框，再放置位置
        self.rect = pygame.Rect(0,0,ai_setting.bullet_width,
                                ai_setting.bullet_height)
        self.rect.centerx = ship.rect.centerx
        self.rect.top = ship.rect.top

        # 以小數點，存放子彈位置
        self.y = float(self.rect.y)

        # 子彈顏色
        self.color = ai_setting.bullet_color
        # 子彈速度
        self.bullet_speed_factor = ai_setting.bullet_speed_factor

    def update(self):
        """向上移動子彈"""
        # 以小數點，更新子彈位置
        self.y -= self.bullet_speed_factor
        # 更新子彈位置
        self.rect.y = self.y

    def draw_bullet(self):
        """螢幕上畫子彈"""
        pygame.draw.rect(self.screen,self.color,self.rect)
