// Weapon placement
if instance_exists(obj_player) {
	// Direction of weapon
	
	// Facing Right
	if obj_player.direction_facing == 1 {
		image_xscale = 1
		x = obj_player.x + 22
		y = obj_player.y + 1
	}
	// Facing left
	if obj_player.direction_facing == -1 {
		image_xscale = -1
		x = obj_player.x - 22
		y = obj_player.y + 1
	}
}

// Use weapon
if canAttack == true {
	canAttack = false;
	
	// Create projectile and reset shot timer
	var laser = instance_create_layer(x, y, "Instances", obj_player_projectile)
	
	if obj_player.direction_facing == 1 then laser.speed = 5 // Shoot right
	if obj_player.direction_facing == -1 then laser.speed = -5 // Shoot left
	
	alarm[0] = attack_cooldown
}