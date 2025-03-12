function scr_apply_upgrades(upgrade_types){
	if(upgrade_types == "damage"){
		
		if (hovered_weapon == "projectile") {
			obj_player.attackdmg_ranged+=itandom_range(1,10)
		}else if(hovered_weapon == "aoe"){
			obj_player.attackdmg_aoe+=itandom_range(1,10)
		}else if(hovered_weapon == "melee"){
			obj_player.attackdmg_melee+=itandom_range(1,10)
		}	
	}else if(upgrade_types == "max_health"){
		random_health_upgrade=irandom_range(1,5)
		obj_player.hp_max+=random_health_upgrade
		obj_player.hp+=random_health_upgrade
	}else if(upgrade_types == "attack_speed"){
        	if (hovered_weapon == "projectile") {
			obj_player.attackspeed_ranged+=itandom_range(1,10)
		}else if(hovered_weapon == "melee"){
			obj_player.attackspeed_melee+=itandom_range(1,10)
		}
		 
	}else if(upgrade_types == "move_speed"){
		obj_player.move_speed+= irandom_range(1,3); 
	}else if(upgrade_types == "regeneration"){
		obj_player.hp_regen+= irandom_range(1,3); 
	}else if(upgrade_types == "attack_range"){
		if (hovered_weapon == "projectile") {
			obj_player.attackrange_ranged+=itandom_range(1,10)
		}else if(hovered_weapon == "aoe"){
			obj_player.attackrange_aoe+=itandom_range(1,10)
		}else if(hovered_weapon == "melee"){
			obj_player.attackrange_melee+=itandom_range(1,10)
		}
	}else if(upgrade_types == "new_weapon"){
		if (hovered_weapon == "projectile") {
			obj_player.hasRanged=true
		}else if(hovered_weapon == "aoe"){
			obj_player.hasAOE=true
		} 
        }else if(upgrade_types == "armor"){ 
			obj_player.hasArmor=true
	}
}