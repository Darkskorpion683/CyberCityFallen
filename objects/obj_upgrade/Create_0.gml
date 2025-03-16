instance_deactivate_all(true)
instance_activate_object(obj_player)
obj_player.player_disabled=true;
obj_player.hasMelee=false;
// Repeatable Upgrades
y_start = obj_player.y - 200;
button_width = 350;
button_height = 70;
button_spacing = 70;
depth = -1;
x_pos = 0;
y_pos=0;

upgrade_pool = [
    {type: "attackdmg_melee", label: "Melee Damage", value: 10 },
    {type: "attackrange_melee", label: "Melee Range", value: 0.3 },
    {type: "attackspeed_melee", label: "Melee Speed", value: -5},
    {type: "attackdmg_ranged", label: "Projectile Damage", value : 5 },
    {type: "attackrange_ranged", label:"Projectile Range", value: 50},
    {type: "attackspeed_ranged", label: "Projectile Rate", value: -10},
    {type: "attackdmg_aoe", label: "AOE Damage", value: 1},
    {type: "attackrange_aoe", label: "AOE Range", value: 0.5},
    {type: "hp_max", label: "Max Health", value: 25},
    {type: "move_speed", label: "Speed", value: 0.5},
    {type: "hp_regen", label: "Regen", value:0.5},
	{type: "hp", label: "Full Health", value: obj_player.hp_max}
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
 var random_upgrade1= upgrade_pool[irandom(array_length(upgrade_pool) - 1)];
 var random_upgrade2= upgrade_pool[irandom(array_length(upgrade_pool) - 1)];
 var random_upgrade3= upgrade_pool[irandom(array_length(upgrade_pool) - 1)];
 while(random_upgrade2==random_upgrade1){
	random_upgrade2= upgrade_pool[irandom(array_length(upgrade_pool) - 1)];	 
 }
 while(random_upgrade3==random_upgrade1||random_upgrade3==random_upgrade2){
	random_upgrade3= upgrade_pool[irandom(array_length(upgrade_pool) - 1)];	 
 }
array_push(available_upgrades, random_upgrade1);
array_push(available_upgrades, random_upgrade2);
array_push(available_upgrades, random_upgrade3);

//One-off upgrades array that will be empty once all weapons and armor are equipped
one_off_upgrades = [
    {type: "hasRanged", label: "Equip Ranged Weapon", value: true},
    {type: "hasAOE", label: "Equip AOE Weapon", value: true}
	
];


// Remove one off upgrades after selection
if(obj_player.hasRanged){
	array_delete(one_off_upgrades , 0, 1);
}
if(obj_player.hasAOE){
    
 if obj_player.hasRanged then array_delete(one_off_upgrades , 0, 1);
 if !obj_player.hasRanged then array_delete(one_off_upgrades , 1, 1);

}


// Combine one-off upgrades with random upgrades
all_upgrades = array_concat(available_upgrades, one_off_upgrades);
if (obj_player.upgrade_call_count==0) {
    all_upgrades = [ {type: "hp_max", label: "Equip Armor (Health)", value: 3}];
}
num_buttons = max(array_length(all_upgrades), 1);
menu_width = button_width + 20; // Add some margin
menu_height = num_buttons * button_spacing;
max_buttons_visible = floor((room_height - 40) / button_height);

// Calculate the distance from the player to each edge of the room
distance_to_left_edge = x; // Distance to the left edge
distance_to_right_edge = room_width - x; // Distance to the right edge
distance_to_top_edge = y; // Distance to the top edge
distance_to_bottom_edge = room_height - y; // Distance to the bottom edge

// Output the distances as debug messages in the console
if(obj_player.hasArmor==true){
show_debug_message("Next Object Call")
show_debug_message("Distance to Left Edge: " + string(distance_to_left_edge));
show_debug_message("Distance to Right Edge: " + string(distance_to_right_edge));
show_debug_message("Distance to Top Edge: " + string(distance_to_top_edge));
show_debug_message("Distance to Bottom Edge: " + string(distance_to_bottom_edge));
}






