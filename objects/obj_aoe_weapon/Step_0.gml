// Weapon placement
if instance_exists(obj_player) {
     x = obj_player.x
     y = obj_player.y
 }
 if(obj_player.hasAOE){
     sprite_index = spr_aoe_weapon
     image_xscale = obj_player.attackrange_aoe
     image_yscale = obj_player.attackrange_aoe
 }
 else{
     sprite_index = noone
 }
