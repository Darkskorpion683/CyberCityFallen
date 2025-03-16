if canAttack == true {
	canAttack = false
	audio_play_sound(snd_AOE_burn, 1, false);
	other.hp -= obj_player.attackdmg_aoe;
	
	alarm[0] = attack_cooldown
}