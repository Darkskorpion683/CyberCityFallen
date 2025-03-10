function scr_apply_upgrades(weapon,upgrade_types){
	if(upgrade_types == "damage"){
		weapon.damage+= irandom_range(1,10)	
	}else if(upgrade_types == "max_health"){
		random_health_upgrade=irandom_range(1,5)
		obj_player.hp_max+=random_health_upgrade
		obj_player.hp+=random_health_upgrade
	}else if(upgrade_types == "attack_cooldown"){
		weapon.attack_cooldown= max(5, player.fire_cooldown + irandom_range(-5, -2)); 
	}else if(upgrade_types == "move_speed"){
		obj_player.move_speed+= irandom_range(1,3); 
	}else if(upgrade_types == "regeneration"){
		obj_player.hp_regen+= irandom_range(1,3); 
	}
	
	
	
	
	

}