var zoom_level = 2;


// Player movement

// State: Trapped for netted player
if (trapped) {
    // Lock the player's position to the trapped position
    x = trapped_x;
    y = trapped_y;
	
	exit;
}


// State: Not trapped aka normal state
if keyboard_check(vk_right) {
	sprite_index = spr_Character_Running_Suit
	direction_facing = 1
	image_xscale = 1
	if (x <= room_width-sprite_width) && !place_meeting(x+move_speed, y, obj_Building1){
	x += move_speed
	}
}

if keyboard_check(vk_left){
	sprite_index = spr_Character_Running_Suit
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
		sprite_index = spr_Character_Running_Suit
		image_xscale = 1
	}
	else{
		sprite_index = spr_Character_Running_Suit
		image_xscale = -1
	}
		
}

if keyboard_check(vk_down){
	if !place_meeting(x, y+move_speed, obj_Building1){
	y += move_speed
	}
	if direction_facing == 1 {
		sprite_index = spr_Character_Running_Suit
		image_xscale = 1
	}
	else{
		sprite_index = spr_Character_Running_Suit
		image_xscale = -1
	}
}

if (!keyboard_check(vk_left) && 
    !keyboard_check(vk_right) && 
    !keyboard_check(vk_up) && 
    !keyboard_check(vk_down)){
		if direction_facing == -1 {
			sprite_index = spr_Character_Idle_Suit
			image_xscale = -1
		}
		else{
			sprite_index = spr_Character_Idle_Suit
			image_xscale = 1
		}

}
// End Movement

//Weapons
// will check if weapon has been obtained, then calculate what it does based on level and upgrades.

// XP check for upgrade menu
if XP == 0
	instance_create_layer(x, y, "Instances", Upgrade)


// Health check for regen upgrade
/* Needs fixing with a timer, currently just instantly regens everything
*/
while(obj_player.hp<=obj_player.hp_max){
	obj_player.hp+=obj_player.hp_regen
}


// Room Bounds
x = clamp(x, sprite_width, room_width-sprite_width)
y = clamp(y, sprite_height/2, room_height-sprite_height/2)