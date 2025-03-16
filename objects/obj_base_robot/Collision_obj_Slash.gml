if(!beenSlashed){
beenSlashed = true
hp -= obj_player.attackdmg_melee
alarm[1] = obj_player.attackspeed_melee-1
audio_play_sound(snd_slash_hit, 1, false);
}