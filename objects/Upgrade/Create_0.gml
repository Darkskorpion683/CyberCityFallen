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
Aoe weapon does not have need to upgrade 
attack speed which would end up potential 
only giving it one bonus instead of 2
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
