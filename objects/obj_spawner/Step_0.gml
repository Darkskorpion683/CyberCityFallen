if allowSpawn == true {
	allowSpawn = false
	instance_create_layer(x, y, "Instances", objectType)
	alarm[0] = spawnInterval
}