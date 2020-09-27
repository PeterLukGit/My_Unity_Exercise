import pygame.font


class Button():

    def __init__(self, ai_setting, screen, msg):
        """初始化按鈕屬性"""
        self.screen = screen
        self.screen_rect = screen.get_rect()

        # 設置按鈕尺寸屬性
        self.width, self.height = 200, 50
        self.button_color = (0, 255, 0)
        self.text_color = (255, 255, 255)
        self.font = pygame.font.SysFont(None, 48)

        # 新增按鈕的Rect物件(就是矩形物件)，並居中
        self.rect = pygame.Rect(0, 0, self.width, self.height)
        self.rect.center = self.screen_rect.center

        # 按鈕只需新增一次
        self.prep_msg(msg)

    def prep_msg(self, msg):
        """將msg(訊息)渲染為圖像，並放在按鈕上面"""
        self.msg_image = self.font.render(msg,True,self.text_color,self.button_color)
        self.msg_image_rect =self.msg_image.get_rect()
        self.msg_image_rect.center = self.rect.center

    def draw_button(self):
        # 畫一個顏色填充按鈕，並將文字渲染在上面
        self.screen.fill(self.button_color,self.rect)
        self.screen.blit(self.msg_image,self.msg_image_rect)