if (mouse_check_button_pressed(mb_left)) {
    if (hovered_weapon == "laser") {
        obj_projectile_weapon.damage += weapon_bonus_laser_damage;
        obj_projectile_weapon.attack_cooldown = max(5, obj_projectile_weapon.attack_cooldown + weapon_bonus_laser_cooldown);
        obj_player.max_hp += weapon_bonus_laser_hp;
        obj_player.hp += weapon_bonus_laser_hp;
        option_selected = true;
    } 
    else if (hovered_weapon == "plasma") {
        obj_plasma.damage += weapon_bonus_plasma_damage;
        player.fire_cooldown = max(5, player.fire_cooldown + weapon_bonus_plasma_cooldown);
        obj_player.max_hp += weapon_bonus_plasma_hp;
        obj_player.hp += weapon_bonus_plasma_hp;
        option_selected = true;
    } 
    else if (hovered_weapon == "sword") {
        obj_base_weapon.damage += weapon_bonus_sword_damage;
        obj_base_weapon.attack_cooldown = max(5, obj_base_weapon.attack_cooldown + weapon_bonus_sword_cooldown);
        obj_player.max_hp += weapon_bonus_sword_hp;
        obj_player.hp += weapon_bonus_sword_hp;
        option_selected = true;
    }
}

// Close UI and resume game
if (option_selected) {
    global.game_paused = false;
    instance_destroy();
}