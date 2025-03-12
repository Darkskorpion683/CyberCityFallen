//Upgrade create event
// Generate random upgrades for projectile 
ranged_weapon_upgrade=get_random_upgrade(false)
//Generate random upgrades for Aoe weapon
aoe_weapon_upgrade=get_random_upgrade(true) 
//Generate random upgrades for melee
melee_weapon_upgrade=get_random_upgrade(false)
armor_upgrade=["armor","regeneration"]
/*
All contain a boolean argument because the 
Aoe weapon does not need to upgrade 
attack speed which would end up potentially
only giving it one upgrade instead of 2
*/
if(!obj_player.hasRanged){
 ranged_weapon_upgrade[0]="new_weapon"
 ranged_weapon_upgrade[1]="blank"
}
if(!obj_player.hasAOE){
 aoe_weapon_upgrade[0]="new_weapon"
 aoe_weapon_upgrade[1]="blank"
}
//add variable definitinon to obj_player hasArmor
hovered_weapon = ""; 
option_selected = false;
if (global.player_x != undefined && global.player_y != undefined) {
    x = global.player_x; // Set the object's x position to the player's x position
    y = global.player_y; // Set the object's y position to the player's y position
}
// Pause game while upgrade menu is open
game_paused = true;