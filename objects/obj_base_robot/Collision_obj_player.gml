if canAttack == true {
	canAttack = false
	attack_on_cooldown = true
	obj_player.hp -= damage
	alarm[0] = attack_cooldown
}
