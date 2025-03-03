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
	if (distance_to_object(target) <= attack_range and target != noone) {
		target.hp -= damage
		alarm[0] = attack_cooldown
	} else {
		alarm[0] = attack_cooldown	
	}
	
}