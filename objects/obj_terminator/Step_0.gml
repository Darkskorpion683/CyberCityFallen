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