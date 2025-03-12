if(obj_player.hp < obj_player.hp_max){
if((obj_player.hp+obj_player.hp_regen) > obj_player.hp_max){
   obj_player.hp=obj_player.hp_max
  }else{
	 obj_player.hp+=obj_player.hp_regen 
  }
 }
alarm[3]=regeneration_delay