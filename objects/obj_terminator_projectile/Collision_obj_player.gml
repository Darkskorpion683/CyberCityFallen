instance_destroy()

// Set the player's state to trapped
obj_player.trapped = true

// Store the player's position at the time of collision
obj_player.trapped_x = obj_player.x
obj_player.trapped_y = obj_player.y

// Set the alarm to 1 second
obj_player.alarm[0] = room_speed
