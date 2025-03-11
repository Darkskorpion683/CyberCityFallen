if instance_exists(obj_player)
	// Health bar
    draw_healthbar(10,10,244,35,obj_player.hp, c_black,c_red,c_lime,0,true,true)
	// XP bar
	draw_healthbar(10,50,244,75,obj_player.XP, c_blue,c_black,c_black,1,true,true)
	draw_set_font(xp_font)
	draw_text(15,50,"XP: " + string(abs(obj_player.XP-100)))
	
	// Game timer
	var total_seconds = time_elapsed div room_speed;
	var minutes = total_seconds div 60;
	var seconds = total_seconds mod 60;
	
	// Format with leading zero if seconds < 10
	var display_time = string_format(minutes, 2, 0) + ":" + string_format(seconds, 2, 0);

	draw_set_font(timer_font); // Set the font
	draw_set_color(c_white); // Set text color
	draw_text(1920 / 2, 10, display_time); // Display timer
