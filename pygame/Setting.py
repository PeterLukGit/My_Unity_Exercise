class Setting():
    """存放設定"""

    def __init__(self):
        """初始化設定"""
        # 螢幕部分
        self.screen_width = 1200
        self.screen_height = 800
        self.bg_color = (230, 230, 230)

        # 子彈設置
        self.bullet_speed_factor = 3
        self.bullet_width = 3
        self.bullet_height = 15
        self.bullet_color = (60, 60, 60)
        self.bullet_allowed = 3

        # 外星人設置
        self.alien_speed_factor = 1
        # 向下移動速度
        self.fleet_drop_speed = 10
        #  fleet_direction為1向右移，-1為向左移
        self.fleet_direction = 1
        # 外星人分數上升速度
        self.score_scale = 1.5

        # 飛船設定
        self.ship_speed_factor = 1.5
        self.ship_limit = 3

        # 遊戲以多少速度，加速遊戲難度
        self.speedup_scale = 1.1

        # 初始化
        self.initialize_dynamic_settings()

    def initialize_dynamic_settings(self):
        """初始化隨遊戲進展而加速的遊戲設定"""

        # 飛船設定
        self.ship_speed_factor = 1.5
        self.ship_limit = 3

        # 子彈設置
        self.bullet_speed_factor = 3

        # 外星人設置
        self.alien_speed_factor = 1
        self.fleet_direction = 1
        self.alien_point = 50

    def increase_speed(self):
        """提高速度"""
        self.ship_speed_factor *= self.speedup_scale
        self.bullet_speed_factor *= self.speedup_scale
        self.alien_speed_factor *= self.speedup_scale

        self.alien_point = int(self.score_scale * self.alien_point)

