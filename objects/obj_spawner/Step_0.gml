// Check if spawn delay condition is met
if !alarm[0] && obj_scoreboard.time_elapsed div 3600 >= spawnDelay {
    allowSpawn = true;
}

// Spawning logic
if allowSpawn {
    allowSpawn = false; 
    var enemy = instance_create_layer(x, y, "Instances", objectType);
    scr_spawning(enemy);

    // Set cooldown for the next spawn
    alarm[0] = spawnInterval * room_speed
}
