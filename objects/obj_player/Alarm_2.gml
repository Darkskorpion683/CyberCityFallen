if(hasRanged){
	
	var target = instance_nearest(x, y, obj_base_robot)
	
	if (target != noone && point_distance(x, y, target.x, target.y) <= attackrange_ranged){
		instance_create_layer(x, y, "Instances", obj_player_projectile)
	}
}

alarm[2] = attackspeed_ranged