// get_random_upgrade()
// Returns an array with two uprgrades

function get_random_upgrade(modifiedSelection) {
    var upgrade_types = ["damage", "attack_speed", "max_health", "move_speed","regeneration","attack_range"];
    
    if(modifiedSelection){
	array_delete(upgrade_types,1,1)
    } 	
    // Pick the first random upgrade
    var b1 = upgrade_types[irandom(array_length(upgrade_types) - 1)];

    // Pick the second random upgrade (ensure it's different from the first)
    var b2 = upgrade_types[irandom(array_length(upgrade_types) - 1)];
    
	//ensures that both upgrades are unique
    while (b2 == b1){
        b2 = upgrade_types[irandom(array_length(upgrade_types) - 1)];
    }
    return [b1, b2];
}