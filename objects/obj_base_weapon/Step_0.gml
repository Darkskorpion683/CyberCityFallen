// Weapon placement
if instance_exists(obj_player) {
	// Direction of weapon
	
	// Facing Right
	if obj_player.direction_facing == 1 {
		image_index = 1
		x = obj_player.x + 50
		y = obj_player.y + 5
	}
	// Facing left
	if obj_player.direction_facing == -1 {
		image_index = 0
		x = obj_player.x - 20
		y = obj_player.y + 5
	}



}

// Use weapon
if canAttack == true {
	canAttack = false;
	var target = instance_nearest(x, y, obj_base_robot) // May need to change this to target any enemy
	
	// Find direction to target from player (left or right of player)
	if target != noone {
		var target_direction = 0;
		if target.x < obj_player.x then target_direction = -1
		if target.x >= obj_player.x then target_direction = 1
	
		// Check if within range and facing the right direction to hit target
		var canHit = false;
		if (distance_to_object(target) <= attack_range and obj_player.direction_facing == target_direction) {
			canHit = true
		}
	
		// Deal damage to target and reset attack cooldown
		if (canHit == true) {
			target.hp -= damage
			
			alarm[0] = attack_cooldown
		} else {
			
			alarm[0] = attack_cooldown	
		}
	}
}