// Enemy tracking the player
if instance_exists(obj_player)
	direction = point_direction(x, y, obj_player.x, obj_player.y)

// Track health
if hp <= 0 then instance_destroy()

