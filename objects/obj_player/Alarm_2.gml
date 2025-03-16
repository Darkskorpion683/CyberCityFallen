if (hasRanged) {
	// Find the nearest enemy and assign that to be target
	var target;
	if instance_exists(obj_base_robot) || instance_exists(obj_laser_robot) || instance_exists(obj_terminator) {
		var robot_dist = distance_to_object(instance_nearest(x, y, obj_base_robot));
		var drone_dist = distance_to_object(instance_nearest(x, y, obj_laser_robot))
		var terminator_dist = distance_to_object(instance_nearest(x, y, obj_terminator))

		target = instance_nearest(x, y, obj_base_robot);
		if drone_dist < distance_to_object(target) then target = instance_nearest(x, y, obj_laser_robot)
		if terminator_dist < distance_to_object(target) then target = instance_nearest(x, y, obj_terminator)
	} else {
		target = noone	
	}
	
	if (target != noone && distance_to_object(target) <= attackrange_ranged) {
		instance_create_layer(x, y, "Instances", obj_player_projectile)
		
		// Deal damage
		if (place_meeting(obj_player_projectile.x, obj_player_projectile.y, target)) {
			target.hp -= attackdmg_ranged	
			instance_destroy(obj_player_projectile)
		}
	}
	
	alarm[2] = attackspeed_ranged
}