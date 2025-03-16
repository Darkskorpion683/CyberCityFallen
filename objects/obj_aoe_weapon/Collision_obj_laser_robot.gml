if canAttack == true {
	canAttack = false
	other.hp -= obj_player.attackdmg_aoe;
	audio_play_sound(snd_AOE_burn, 1, false);
	alarm[0] = attack_cooldown
}