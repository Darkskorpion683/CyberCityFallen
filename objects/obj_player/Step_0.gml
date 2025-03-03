var zoom_level = 2;

// Player movement
if keyboard_check(vk_right) {
	sprite_index = CharacterRunning
	direction_facing = 1
	image_xscale = 1
	if (x <= room_width-sprite_width) && !place_meeting(x+move_speed, y, obj_Building1){
	x += move_speed
	}
}

if keyboard_check(vk_left){
	sprite_index = CharacterRunning
	direction_facing = -1
	image_xscale = -1
	if(x >= 32) && !place_meeting(x+move_speed, y, obj_Building1){
	x -= move_speed
	}
}



if keyboard_check(vk_up){
	if !place_meeting(x, y-move_speed, obj_Building1){
	y += -move_speed
	}
	if direction_facing == 1{
		sprite_index = CharacterRunning
		image_xscale = 1
	}
	else{
		sprite_index = CharacterRunning
		image_xscale = -1
	}
		
}

if keyboard_check(vk_down){
	if !place_meeting(x, y+move_speed, obj_Building1){
	y += move_speed
	}
	if direction_facing == 1 {
		sprite_index = CharacterRunning
		image_xscale = 1
	}
	else{
		sprite_index = CharacterRunning
		image_xscale = -1
	}
}

if (!keyboard_check(vk_left) && 
    !keyboard_check(vk_right) && 
    !keyboard_check(vk_up) && 
    !keyboard_check(vk_down)){
		if direction_facing == -1 {
			sprite_index = CharacterIdle
			image_xscale = -1
		}
		else{
			sprite_index = CharacterIdle
			image_xscale = 1
		}
		
	}
// End Movement

// Room Bounds
x = clamp(x, sprite_width, room_width-sprite_width)
y = clamp(y, sprite_height/2, room_height-sprite_height/2)