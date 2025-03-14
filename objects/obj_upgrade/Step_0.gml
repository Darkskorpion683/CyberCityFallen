// In the Step Event of obj_upgrade
var x_offset = 25;  // Horizontal offset from player position
var y_offset = -50; // Vertical offset from player position
var button_height = 70; // Height of each button to make spacing more comfortable
var y_start = obj_player.y - 200; // Move the UI higher
var button_spacing = 70; // Increase spacing between buttons
var button_width = 350; // Define the width of the button

// Set text alignment
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

// Initialize x_pos and y_pos before using them
var x_pos = obj_player.x - x_offset;
var y_pos = y_start;

for (var i = 0; i < array_length(all_upgrades); i++) {
    // Update y_pos for each button
    y_pos = y_start + i * button_spacing;

    // Only check for a mouse click and selection if the mouse is inside the button bounds
    if (mouse_x > x_pos && mouse_x < x_pos + button_width &&
        mouse_y > y_pos && mouse_y < y_pos + button_height) {
        
        // Check for a mouse click event before applying the upgrade
        if (mouse_check_button_pressed(mb_left)) {
            var upgrade = all_upgrades[i];

            // Apply the upgrade logic (using switch statement)
            switch (upgrade.type) {
                case "hasRanged":
                      obj_player.hasRanged = true;
                    
                    break;
                case "hasAOE":
                	obj_player.hasAOE = true;
                    break;
 
                case "attackdmg_melee":
                    obj_player.attackdmg_melee += upgrade.value;
                    break;
                case "attackrange_melee":
                    obj_player.attackrange_melee += upgrade.value;
                    break;
                case "attackspeed_melee":
                    obj_player.attackspeed_melee += upgrade.value;
                    break;
                case "attackdmg_ranged":
                    obj_player.attackdmg_ranged += upgrade.value;
                    break;
                case "attackrange_ranged":
                    obj_player.attackrange_ranged += upgrade.value;
                    break;
                case "attackspeed_ranged":
                    obj_player.attackspeed_ranged += upgrade.value;
                    break;
                case "attackdmg_aoe":
                    obj_player.attackdmg_aoe += upgrade.value;
                    break;
                case "attackrange_aoe":
                    obj_player.attackrange_aoe += upgrade.value;
                    break;
                case "move_speed":
                    obj_player.move_speed += upgrade.value;
                    break;
                case "hp_max":
					if(!obj_player.hasArmor){
					obj_player.hasArmor=true;
					}
                    obj_player.hp_max += upgrade.value;
                    break;
                case "hp_regen":
                    obj_player.hp_regen += upgrade.value;
                    break;
				case "hp":
                    obj_player.hp += upgrade.value;
                    break;
                default:
                    // Handle other cases if necessary
                    break;
            }

            // Destroy the upgrade menu after selection
            instance_destroy();
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
            break;
        }
    }
}

                    



