function apply_upgrade(upgrade){
// Check for a mouse click event before applying the upgrade
if (mouse_check_button_pressed(mb_left)) {
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
            if (!obj_player.hasArmor) {
                obj_player.hasArmor = true;
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
            break;
    }

    // Destroy the upgrade menu after selection
    instance_destroy();
    
}

}