// Handle weapon selection when the mouse button is pressed
if (mouse_check_button_pressed(mb_left) && hovered_weapon != "") {
    if (hovered_weapon == "Ranged Weapon") {
        apply_upgrades(ranged_weapon_upgrade[0]);
        apply_upgrades(ranged_weapon_upgrade[1]);
        option_selected = true;
    } 
    else if (hovered_weapon == "AOE Weapon") {
        apply_upgrades(aoe_weapon_upgrade[0]);
        apply_upgrades(aoe_weapon_upgrade[1]);
        option_selected = true;
    } 
    else if (hovered_weapon == "Melee") {
        apply_upgrades(melee_weapon_upgrade[0]);
        apply_upgrades(melee_weapon_upgrade[1]);
        option_selected = true;
    }
    else if (hovered_weapon == "Armor") {
        apply_upgrades(armor_upgrade[0]);
        apply_upgrades(armor_upgrade[1]);
        option_selected = true;
    }
}

// Handle pausing and unpausing the game after selection
if (game_paused && !option_selected) {
    instance_deactivate_all(true);
	instance_activate_object(obj_player)
} else if (option_selected) {
    instance_activate_all(); // Reactivate all instances
    instance_destroy(); // Destroy the current instance of obj_upgrade
    game_paused = false;  // Unpause the game
}