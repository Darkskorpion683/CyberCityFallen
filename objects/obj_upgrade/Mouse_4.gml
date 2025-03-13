if (mouse_check_button_pressed(mb_left)) {
    for (var i = 0; i < array_length(all_upgrades); i++) {
        var upgrade = all_upgrades[i];
        var x_pos = obj_player.x + 50;
        var y_pos = obj_player.y - 100 + i * 40;

        if (mouse_x > x_pos && mouse_x < x_pos + 100 && mouse_y > y_pos && mouse_y < y_pos + 40) {
            // Apply upgrade to the actual player instance
            with (obj_player) {
                if (upgrade.type == "hasRanged" && !hasRanged) {
                    hasRanged = true;
                } else if (upgrade.type == "hasAOE" && !hasAOE) {
                    hasAOE = true;
                } else if (upgrade.type == "hasArmor" && !hasArmor) {
                    hasArmor = true;
                } else {
                    // Directly modify the instance variable using variable_instance_set
                    variable_instance_set(id, upgrade.type,upgrade.value) ;
                }
            }

            // Destroy the upgrade menu after selection
            instance_destroy();
            break;
        }
    }
}

