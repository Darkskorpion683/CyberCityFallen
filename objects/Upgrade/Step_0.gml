//obj_upgrade step event

if (mouse_check_button_pressed(mb_left) && hovered_weapon!="") {
    if (hovered_weapon == "projectile") {
        apply_bonus(projectile_weapon_upgrade[0]);
        apply_bonus(projectile_weapon_upgrade[1]);
        option_selected = true;
    } 
    else if (hovered_weapon == "aoe") {
        apply_bonus(aoe_weapon_upgrade[0]);
        apply_bonus(aoe_weapon_upgrade[1]);
        option_selected = true;
    } 
    else if (hovered_weapon == "melee") {
        apply_bonus(melee_weapon_upgrade[0]);
        apply_bonus(melee_weapon_upgrade[1]);
        option_selected = true;
    }
}

// Resume game after selection
if (option_selected) {
    global.game_paused = false;
    instance_destroy();
}