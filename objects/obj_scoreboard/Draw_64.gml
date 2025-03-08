if instance_exists(obj_player)
	// Health bar
    draw_healthbar(10,10,244,35,obj_player.hp, c_black,c_red,c_lime,0,true,true)
	// XP bar
	draw_healthbar(10,50,244,75,obj_player.XP, c_blue,c_black,c_black,1,true,true)
	draw_text(15,50,"XP: " + string(abs(obj_player.XP-100)))