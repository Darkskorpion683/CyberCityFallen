if (mouse_check_button_pressed(mb_left) && hovered_weapon!="") {
    if (hovered_weapon == "projectile") {
        apply_bonus(obj_projectile_weapon, projectile_weapon_upgrade[0]);
        apply_bonus(obj_projectile_weapon, projectile_weapon_upgrade[1]);
        option_selected = true;
    } 
    else if (hovered_weapon == "aoe") {
        apply_bonus(obj_aoe_weapon, aoe_weapon_upgrade[0]);
        apply_bonus(obj_aoe_weapon, aoe_weapon_upgrade[1]);
        option_selected = true;
    } 
    else if (hovered_weapon == "sword") {
        apply_bonus(obj_base_weapon, sword_weapon_upgrade[0]);
        apply_bonus(obj_base_weapon, sword_weapon_upgrade[1]);
        option_selected = true;
    }
}

// Resume game after selection
if (option_selected) {
    global.game_paused = false;
    instance_destroy();
}