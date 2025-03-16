instance_activate_all()
obj_player.player_disabled=false;
obj_player.hasMelee=true;
obj_player.upgrade_call_count++;
if(obj_player.upgrade_call_count>1){
	audio_play_sound(snd_upgrade_applied, 99,false);
	
}else{
	audio_play_sound(snd_armor_equip, 99,false);	
}

