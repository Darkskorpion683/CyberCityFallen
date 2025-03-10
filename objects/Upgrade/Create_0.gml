// Generate random upgrades for projectile
projectile_weapon_upgrade=get_random_upgrade()
//Generate random upgrades for Aoe weapon
aoe_weapon_upgrade=get_random_upgrade()
//Generate random upgrades for melee
melee_weapon_upgrade=get_random_upgrade()



hovered_weapon = ""; 
option_selected = false;

// Pause game while upgrade menu is open
global.game_paused = true;