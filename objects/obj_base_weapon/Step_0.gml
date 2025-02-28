// Weapon placement
if instance_exists(obj_player) {
	/*
	image_index = 0
	x = obj_player.x
	y = obj_player.y
	*/
	/* Needs fixing to have the sword change direction properly
	   In order to fix we need to include the indicies where
	   the sprite is idle AND when running, checking for direction with those*/
	// Player facing right
	if obj_player.image_index == 1 {
		image_index = 1
		x = obj_player.x + 10
		y = obj_player.y
	}
	// Player facing left
	if obj_player.image_index == 0 {
		image_index = 0
		x = obj_player.x - 10
		y = obj_player.y
	}
	
	// Player idle
	
	
}

// Use weapon
if canAttack == true {
	canAttack = false;
	var target = instance_nearest(x, y, obj_base_robot) // May need to change this to target any enemy
	if (distance_to_object(target) <= attack_range and target != noone) {
		target.hp -= damage
		alarm[0] = attack_cooldown
	} else {
		alarm[0] = attack_cooldown	
	}
	
}