// Weapons
current_weapon = obj_projectile_weapon
weapon = instance_create_layer(x, y, "Instances", current_weapon)

// Trapped state
trapped = false

// Player XP, starting at 100 and working towards 0 for an upgrade, this is all on the backend because 
// the draw_healthbar is being used for xp, which is descending, so xp must be descending, yet it seems ascending
// to the player
XP = 100