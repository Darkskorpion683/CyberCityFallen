if(hasMelee){
	instance_create_layer(x, y, "Instances", obj_Slash)
	audio_play_sound(snd_slash, 1, false);
}

alarm[1] = attackspeed_melee