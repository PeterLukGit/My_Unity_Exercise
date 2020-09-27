import pygame
from  pygame.sprite import Sprite

class Ship(Sprite):

    def __init__(self, ai_setting, screen):
        super(Ship,self).__init__()

        """初始化飛船，並設置初始位置"""
        self.screen = screen
        self.ai_setting = ai_setting

        # 加載並拿到長寬，用作之後輸出設定之矩形參數
        self.image = pygame.image.load('ship.bmp')
        self.rect = self.image.get_rect()
        self.screen_rect = screen.get_rect()

        # 將新飛船放到螢幕，中間底部
        self.rect.centerx = self.screen_rect.centerx
        self.rect.bottom = self.screen_rect.bottom

        # 在飛船位置屬性存放float
        self.center = float(self.rect.centerx)

        # 船要向左還是向右移動
        self.moving_right = False
        self.moving_left = False

    def update(self):
        """根據移動Flag調整飛船位置"""
        if self.moving_right == True and self.rect.right < self.screen_rect.right:
            self.center += self.ai_setting.ship_speed_factor
        if self.moving_left == True and self.rect.left > self.screen_rect.left:
            self.center -= self.ai_setting.ship_speed_factor

        # 因self.rect.centerx無法加減小數點，
        # 所以用self.center來存放有小數點的數據，
        # 之後當移動結束再丟到self.rect.centerx
        self.rect.centerx = self.center

    def blitme(self):
        """在指定位置畫飛船"""
        self.screen.blit(self.image, self.rect)

    def center_ship(self):
        self.center = self.screen_rect.centerx
