// Check if spawn delay condition is met
if !alarm[0] && obj_scoreboard.time_elapsed / 3600 >= spawnDelay {
    allowSpawn = true;
	
	// Only allow spawning if the time is still within the limit
    if obj_scoreboard.time_elapsed / 3600 <= spawnStopTime {
        allowSpawn = true;
    } else {
        allowSpawn = false; // Permanently disable base spawns
    }
}

// Spawning logic
if allowSpawn {
    allowSpawn = false; 
    var enemy = instance_create_layer(x, y, "Instances", objectType);
    scr_spawning(enemy);

    // Set cooldown for the next spawn
    alarm[0] = spawnInterval * room_speed
}
