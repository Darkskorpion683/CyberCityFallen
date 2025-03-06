// Generate random bonuses for projectile
weapon_bonus_projectile_damage  = irandom_range(1, 3);
weapon_bonus_projectile_cooldown = irandom_range(-5, -2);
weapon_bonus_projectile_hp      = irandom_range(2, 5);

/*Generate random bonuses for third weapon
weapon_bonus_plasma_damage = irandom_range(2, 6);
weapon_bonus_plasma_cooldown = irandom_range(-6, -3);
weapon_bonus_plasma_hp     = irandom_range(1, 4);
*/
//Generate random bonuses for sword
weapon_bonus_sword_damage  = irandom_range(3, 7);
weapon_bonus_sword_cooldown = irandom_range(-8, -4);
weapon_bonus_sword_hp      = irandom_range(3, 6);


hovered_weapon = ""; 
option_selected = false;

// Pause game while upgrade menu is open
global.game_paused = true;