// Enemy tracking the player
if instance_exists(obj_player) {
	direction = point_direction(x, y, obj_player.x, obj_player.y)

	// Give speed boost to terminator after health is below half health
	if hp <= 50 {
		speed = 1.5
	}
	
	// Terminator shoots a net at the player that stops movement for 1 second
	if canShoot and distance_to_object(obj_player) <= projectile_range {
		var net = instance_create_layer(x, y, "Instances", obj_terminator_projectile)
		net.image_angle = direction // Rotates laser sprite to face player
		net.direction = direction
		net.image_blend = make_color_rgb(50, 50, 50);
		// Change net speed based on terminator speed
		if hp <= 50 {
			net.speed = 3
		} else {
			net.speed = 1.5
		}

		canShoot = false
		alarm[0] = shoot_cooldown;
	}

	// Track health
	if hp <= 0 then instance_destroy()
	
	// Deal damage to player
	if place_meeting(x, y, obj_player) {
    if canAttack {
        canAttack = false
        obj_player.hp -= damage
        alarm[3] = attack_cooldown
    }
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