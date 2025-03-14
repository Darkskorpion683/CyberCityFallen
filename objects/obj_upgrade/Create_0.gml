instance_deactivate_all(true)
instance_activate_object(obj_player)

// Repeatable Upgrades

upgrade_pool = [
    {type: "attackdmg_melee", label: "Melee Damage", value:0.2 },
    {type: "attackrange_melee", label: "Melee Range", value: 0.3 },
    {type: "attackspeed_melee", label: "Melee Speed", value: 0.2},
    {type: "attackdmg_ranged", label: "Ranged Damage", value :0.4 },
    {type: "attackrange_ranged", label:"Range Increase", value: 0.2},
    {type: "attackspeed_ranged", label: "Ranged Speed", value:0.3},
    {type: "attackdmg_aoe", label: "AOE Damage", value:0.3},
    {type: "attackrange_aoe", label: "AOE Range", value: 0.2},
    {type: "hp_max", label: "Max Health", value: 3},
    {type: "move_speed", label: "Speed", value: 0.1},
    {type: "hp_regen", label: "Regen", value:0.5},
	{type: "hp", label: "Health", value:5}
];

// Check if the player does not have ranged weapon
if (!obj_player.hasRanged) {
    for (var i = array_length(upgrade_pool) - 1; i >= 0; i--) {
        if (string_pos("ranged", upgrade_pool[i].type) != 0) {
            array_delete(upgrade_pool, i, 1); // Delete the element if "ranged" is in the type
        }
    }
}

// Check if the player does not have AOE weapon
if (!obj_player.hasAOE) {
    for (var i = array_length(upgrade_pool) - 1; i >= 0; i--) {
        if (string_pos("aoe", upgrade_pool[i].type) != 0) {
            array_delete(upgrade_pool, i, 1); // Delete the element if "aoe" is in the type
        }
    }
}



// initializes array to collect the random selected upgrades from the pool
available_upgrades = [];


for (var i = 0; i < 3; i++) { // Select 3 random upgrades to offer
    var random_upgrade = upgrade_pool[irandom(array_length(upgrade_pool) - 1)];
    array_push(available_upgrades, random_upgrade);
}

//One-off upgrades array that will be empty was all weapons and armor are equipped
one_off_upgrades = [
    {type: "hasRanged", label: "Equip Ranged Weapon", value: true},
    {type: "hasAOE", label: "Equip AOE Weapon", value: true}
	
];
if(obj_player.hasRanged){
	array_delete(one_off_upgrades , 0, 1);
}else if(obj_player.hasAOE){
	array_delete(one_off_upgrades , 1, 1);
}


// Combine one-off upgrades with random upgrades
all_upgrades = array_concat(available_upgrades, one_off_upgrades);

