if canAttack == true {
	canAttack = false
	
	other.hp -= obj_player.attackdmg_aoe;
	
	alarm[0] = attack_cooldown
}