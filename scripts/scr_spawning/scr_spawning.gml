function scr_spawning(){
	// Generate a random y either above (0), below (2), or on the sides of the room (1)
	rand_y = irandom_range(0, 2);
	if rand_y = 0 then y = 0 - sprite_height // spawn above room
	if rand_y = 1 then y = irandom_range(0-sprite_yoffset, room_height+sprite_yoffset) // spawn anywhere along the sides
	if rand_y = 2 then y = room_height + sprite_height // spawn below room

	// Generate a random x value anywhere between the left and right of the room
	x = irandom_range(0-sprite_xoffset, room_width+sprite_xoffset); 
}