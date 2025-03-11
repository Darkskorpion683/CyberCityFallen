if canAttack == true {
	canAttack = false
	obj_player.hp -= damage	
} else {
	alarm[3] = attack_cooldown
}


