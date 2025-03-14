var zoom_level = 2;
// Player movement
if(!player_disabled){
// State: Trapped for netted player
if (trapped) {
    x = trapped_x;
    y = trapped_y;
	sprite_index = hasArmor ? spr_Character_trapped_suit : spr_Character_trapped
	direction_facing = -1
    return;
}

// State: Not trapped aka normal state

// State: Character running
if keyboard_check(vk_right) {
    sprite_index = hasArmor ? spr_Character_Running_Suit : spr_CharacterRunning;
    direction_facing = 1;
    image_xscale = 1;
    if (x <= room_width - sprite_width) && !place_meeting(x + move_speed, y, obj_Building1) {
        x += move_speed;
    }
}

if keyboard_check(vk_left) {
    sprite_index = hasArmor ? spr_Character_Running_Suit : spr_CharacterRunning;
    direction_facing = -1;
    image_xscale = -1;
    if (x >= 32) && !place_meeting(x - move_speed, y, obj_Building1) {
        x -= move_speed;
    }
}

if keyboard_check(vk_up) {
    if !place_meeting(x, y - move_speed, obj_Building1) {
        y -= move_speed;
    }
    sprite_index = hasArmor ? spr_Character_Running_Suit : spr_CharacterRunning;
    image_xscale = direction_facing;
}

if keyboard_check(vk_down) {
    if !place_meeting(x, y + move_speed, obj_Building1) {
        y += move_speed;
    }
    sprite_index = hasArmor ? spr_Character_Running_Suit : spr_CharacterRunning;
    image_xscale = direction_facing;
}

// State: Character idle (when no movement keys are pressed)
if (!keyboard_check(vk_left) && 
    !keyboard_check(vk_right) && 
    !keyboard_check(vk_up) && 
    !keyboard_check(vk_down)) 
{
    sprite_index = hasArmor ? spr_Character_Idle_Suit : spr_CharacterIdle;
    image_xscale = direction_facing;
}

// End movement 


// XP check for upgrade menu
if (XP == 0) {
	instance_create_layer(obj_player.x, obj_player.y, "UI_Layer", obj_upgrade);
	XP = 100
	upgrade_call_count++;
}
// Health check for regen upgrade
// Needs fixing with a timer, currently just instantly regens everything
   
if (hp < hp_max && alarm[3] <= 0) {
    alarm[3] = regeneration_delay;
}


// Player Death
if hp <= 0 {
	instance_destroy()	
 }
}
// Room Bounds
x = clamp(x, sprite_width, room_width-sprite_width)
y = clamp(y, sprite_height/2, room_height-sprite_height/2)
