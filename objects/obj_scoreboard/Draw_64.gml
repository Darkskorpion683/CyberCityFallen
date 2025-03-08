if instance_exists(obj_player)
	//draw_healthbar(-700,-500,-444,-468,obj_player.hp, c_black,c_red,c_lime,0,true,true)
    draw_healthbar(10,10,244,35,obj_player.hp, c_black,c_red,c_lime,0,true,true)
	draw_text(-500,-480,"Score: " + string(points))