// Enemy tracking the player stops when in range to shoot
if instance_exists(obj_player)
	direction = point_direction(x, y, obj_player.x, obj_player.y)
	if distance_to_object(obj_player) <= attack_range {
		speed = 0
	} else {
		speed = hsp;	
	}
	
	
// Shooting Logic
if canShoot and distance_to_object(obj_player) <= attack_range {
	var laser = instance_create_layer(x, y, "Instances", obj_enemy_laser)	
	laser.direction = direction
	laser.speed = 5
	
	canShoot = false
	alarm[0] = shoot_cooldown;
}
	
// Track health
if hp <= 0 then instance_destroy()