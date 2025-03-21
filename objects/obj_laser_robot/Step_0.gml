// Enemy tracking the player stops when in range to shoot
if instance_exists(obj_player)
	direction = point_direction(x, y, obj_player.x, obj_player.y)
	if distance_to_object(obj_player) <= attack_range {
		speed = 0
	} else {
		speed = hsp;	
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

// Shooting Logic
if canShoot and distance_to_object(obj_player) <= attack_range {
	var laser = instance_create_layer(x, y, "Instances", obj_enemy_laser)
	laser.image_angle = direction // Rotates laser sprite to face player
	laser.direction = direction
	laser.speed = 3
	
	canShoot = false
	alarm[0] = shoot_cooldown;
}
	
// Track health
if hp <= 0 then instance_destroy()

// Hit marker code
if place_meeting(x, y, obj_Slash) ||
   place_meeting(x, y, obj_player_projectile) ||
   place_meeting(x, y, obj_aoe_weapon) 
{
    hit_timer = HIT_DURATION; // Start the hit flash timer
}