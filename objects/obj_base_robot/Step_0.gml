// Enemy tracking the player
if instance_exists(obj_player)
	direction = point_direction(x, y, obj_player.x, obj_player.y)

// Track health
if hp <= 0 then instance_destroy()

// Player takes damage this way continous collisions may be accounted for
if place_meeting(x, y, obj_player) {
    if canAttack {
        canAttack = false
        obj_player.hp -= damage
        alarm[3] = attack_cooldown
    }
}

//Rotates sprite to face player
if (obj_player.x > x) {
    if (image_xscale != 1) {
        image_xscale = 1; 
    }
}

else if (obj_player.x < x) {
    if (image_xscale != -1) {
        image_xscale = -1; 
    }
}

// Hit marker code
if place_meeting(x, y, obj_Slash) ||
   place_meeting(x, y, obj_player_projectile) ||
   place_meeting(x, y, obj_aoe_weapon) 
{
    hit_timer = HIT_DURATION; // Start the hit flash timer
}
