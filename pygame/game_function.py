import sys
import pygame

from bullet import Bullet
from alien import Alien
from time import sleep


def check_event(ai_setting, screen, stats, sb, play_button, ship, aliens, bullets):
    """鍵盤滑鼠出觸發事件"""
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            sys.exit()
        elif event.type == pygame.KEYDOWN:
            check_keydown_events(event, ai_setting, screen, ship, bullets)
        elif event.type == pygame.KEYUP:
            check_keyup_events(event, ship)
        elif event.type == pygame.MOUSEBUTTONDOWN:
            mouse_x, mouse_y = pygame.mouse.get_pos()
            check_play_button(ai_setting, screen, stats, sb, ship, aliens, bullets, play_button, mouse_x, mouse_y)


def check_play_button(ai_setting, screen, stats, sb, ship, aliens, bullets, play_button, mouse_x, mouse_y):
    """在玩家按下Play按鈕，開始遊戲"""
    button_clicked = play_button.rect.collidepoint(mouse_x, mouse_y)

    if button_clicked and stats.game_active == False:
        # 重製遊戲設置
        ai_setting.initialize_dynamic_settings()

        # 隱藏滑鼠光標
        pygame.mouse.set_visible(False)

        # 重製遊戲
        stats.game_active = True
        stats.reset_stats()

        # 清空列表
        aliens.empty()
        bullets.empty()

        # 重製計分牌
        sb.prep_score()
        sb.prep_level()
        sb.prep_high_score()
        sb.prep_ship()

        # 新增外星人
        create_fleet(ai_setting, screen, ship, aliens)
        ship.center_ship()


def check_keydown_events(event, ai_setting, screen, ship, bullets):
    """鍵盤按下事件"""
    if event.key == pygame.K_RIGHT:
        ship.moving_right = True
    elif event.key == pygame.K_LEFT:
        ship.moving_left = True
    elif event.key == pygame.K_q:
        sys.exit()
    elif event.key == pygame.K_SPACE:
        fire_bullet(ai_setting, screen, ship, bullets)


def check_keyup_events(event, ship):
    """鍵盤彈起事件"""
    if event.key == pygame.K_RIGHT:
        ship.moving_right = False
    elif event.key == pygame.K_LEFT:
        ship.moving_left = False


def fire_bullet(ai_setting, screen, ship, bullets):
    """發射子彈"""
    # 新增子彈，並加入到編組裡
    if len(bullets) < ai_setting.bullet_allowed:
        new_bullet = Bullet(ai_setting, screen, ship)
        bullets.add(new_bullet)


def create_fleet(ai_setting, screen, ship, aliens):
    """新增外星人群"""
    alien = Alien(ai_setting, screen)
    number_aliens_x = get_number_aliens_x(ai_setting, alien.rect.width)
    number_row = get_number_rows(ai_setting, ship.rect.height, alien.rect.height)

    # 新建外星人群
    for row_number in range(number_row):
        for alien_number in range(number_aliens_x):
            create_alien(ai_setting, screen, aliens, alien_number, row_number)


def get_number_aliens_x(ai_setting, alien_width):
    """計算每行能放多少外星人"""
    # 新增一個外星人，並計算一行能容納多少外星人，外星人間隔為外星人寬度
    # 這是視窗畫面下能放幾台外星人
    available_space_x = ai_setting.screen_width - 2 * alien_width
    # 這是將視窗畫面下放幾台，再除以一個數(保留移動空間...等)，最後計算出一排有多少外星人
    number_aliens_x = int(available_space_x / (2 * alien_width))
    # 回傳
    return number_aliens_x


def create_alien(ai_setting, screen, aliens, alien_number, row_number):
    """新增一行外星人，並顯示在畫面上"""
    # 新增外星人
    alien = Alien(ai_setting, screen)
    alien_width = alien.rect.width
    # 將外星人定位
    alien.x = alien_width + 2 * alien_width * alien_number
    alien.rect.x = alien.x
    alien.rect.y = alien.rect.height + 2 * alien.rect.height * row_number
    # 外星加入到列表裡
    aliens.add(alien)


def get_number_rows(ai_setting, ship_height, alien_height):
    """計算螢幕能容納多少行外星人"""
    available_space_y = (ai_setting.screen_height - (3 * alien_height) - ship_height)
    number_rows = int(available_space_y / (2 * alien_height))
    return number_rows


def check_fleet_edges(ai_setting, aliens):
    """外星人到邊界，該做什麼"""
    for alien in aliens.sprites():
        if alien.check_edges():
            change_fleet_direction(ai_setting, aliens)
            break


def change_fleet_direction(ai_setting, aliens):
    """整體外星人向下移動，並改變方向"""
    for alien in aliens.sprites():
        alien.rect.y += ai_setting.fleet_drop_speed
    ai_setting.fleet_direction *= -1


def update_bullets(ai_setting, screen, stats,
                   sb, ship, aliens, bullets):
    """更新子彈位置，以及刪除跑出螢幕的子彈"""
    bullets.update()

    # 檢查子彈是否超出螢幕，超出就刪除
    for bullet in bullets.copy():
        if bullet.rect.bottom <= 0:
            bullets.remove(bullet)

    # 檢查子彈是否有撞到外星人
    check_bullet_alien_collisions(ai_setting, screen, stats,
                                  sb, ship, aliens, bullets)


def check_bullet_alien_collisions(ai_setting, screen, stats,
                                  sb, ship, aliens, bullets):
    """檢查子彈是否有撞到外星人"""
    # 檢查子彈是否有撞到外星人(就是矩形是否有重疊)
    # 如果有就刪除外星人和子彈
    collisions = pygame.sprite.groupcollide(bullets, aliens, True, True)

    # 加分
    if collisions:
        # 避免同一時間有多名外星人被射中，所以用遍例collisions方式來加分
        for alien in collisions.values():
            stats.score += ai_setting.alien_point * len(alien)
            sb.prep_score()
        check_high_score(stats, sb)

    # 外星人打完
    if len(aliens) == 0:
        # 刪除所有子彈，並新增一群外星人，並增加速度
        bullets.empty()
        ai_setting.increase_speed()
        create_fleet(ai_setting, screen, ship, aliens)

        # 提高等級
        stats.level += 1
        sb.prep_level()


def check_high_score(stats, sb):
    """是否有最高分出現"""
    if stats.score > stats.high_score:
        stats.high_score = stats.score
        sb.prep_high_score()


def check_aliens_bottom(ai_setting, stats, sb, screen, ship, aliens, bullets):
    """檢查是否有外星人到螢幕底端"""
    screen_rect = screen.get_rect()
    for alien in aliens.sprites():
        if alien.rect.bottom >= screen_rect.bottom:
            ship_hit(ai_setting, stats, screen, sb, ship, aliens, bullets)
            break


def update_aliens(ai_setting, stats, sb, screen, ship, aliens, bullets):
    """更新外星人位置，以及檢查是否超出左右邊界"""
    check_fleet_edges(ai_setting, aliens)
    aliens.update()

    # 檢查 外星人跟飛船有沒有碰到
    if pygame.sprite.spritecollideany(ship, aliens):
        # print('Ship 碰撞')
        ship_hit(ai_setting, stats, screen, sb, ship, aliens, bullets)

    # 檢查是否撞到螢幕底部
    check_aliens_bottom(ai_setting, stats, sb, screen, ship, aliens, bullets)


def ship_hit(ai_setting, stats, screen, sb, ship, aliens, bullets):
    """船被外星人撞到"""
    # 船被撞到，扣生命，若生命沒了關閉飛船狀態
    if stats.ship_left > 0:
        stats.ship_left -= 1
        # 更新飛船
        sb.prep_ship()
    else:
        stats.game_active = False
        pygame.mouse.set_visible(True)

    # 清空列表
    aliens.empty()
    bullets.empty()

    # 新增新的外星人
    create_fleet(ai_setting, screen, ship, aliens)
    # 將船置中
    ship.center_ship()
    # 暫停遊戲 0.5秒
    sleep(0.5)


def update_screen(ai_setting, screen, stats, sb, ship, aliens, bullets, play_button):
    """更新螢幕，並將新圖示顯示到螢幕上"""
    # 更新視窗
    screen.fill(ai_setting.bg_color)

    # 畫飛船
    ship.blitme()

    # 畫外星人
    # alien.blitme()
    aliens.draw(screen)

    # 畫子彈
    for bullet in bullets.sprites():
        bullet.draw_bullet()

    if stats.game_active == False:
        play_button.draw_button()

    # 顯示得分
    sb.show_score()

    # 顯示最近繪製的視窗
    pygame.display.flip()
