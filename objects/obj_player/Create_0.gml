// Trapped state
trapped = false
//Melee attack alarm start
alarm[1] = attackspeed_melee
alarm[2] = attackspeed_ranged
// Player XP, starting at 100 and working towards 0 for an upgrade, this is all on the backend because 
// the draw_healthbar is being used for xp, which is descending, so xp must be descending, yet it seems ascending
// to the player
