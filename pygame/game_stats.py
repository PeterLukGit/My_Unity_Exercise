class GameStats():
    """紀錄遊戲統計資料"""

    def __init__(self, ai_setting):
        """初始化統計資料"""
        self.ai_setting = ai_setting
        # 因最高分不能被隨便重製，所以放在init裡
        self.high_score = 0

        self.reset_stats()

        # 船是否能攻擊外星人
        self.game_active = False

    def reset_stats(self):
        """初始化，遊戲資料"""
        self.ship_left = self.ai_setting.ship_limit
        self.score = 0
        self.level = 1