if (hasRanged) {
    var target = instance_nearest(x, y, obj_base_robot);
    
    if (target != noone && distance_to_object(target) <= attackrange_ranged) {
        var proj = instance_create_layer(x, y, "Instances", obj_player_projectile);
        proj.target = target;
    }


    alarm[2] = attackspeed_ranged;
}