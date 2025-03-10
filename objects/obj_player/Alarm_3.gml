if(obj_player.hp < obj_player.maxhp){
  obj_player.hp+=obj_player.regen
if(obj_player.hp < obj_player.max_hp){
   obj_player.hp=obj_player.max_hp
  }
 }
alarm[3]=regeneration_delay
