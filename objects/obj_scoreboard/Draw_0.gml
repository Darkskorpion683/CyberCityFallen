if instance_exists(obj_player)
	draw_healthbar(-500,-500,-244,-468,obj_player.hp, c_black,c_red,c_lime,0,true,true)
	draw_text(-500,-480,"Score: " + string(points))