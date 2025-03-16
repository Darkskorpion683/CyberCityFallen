if (instance_exists(target)) {
    var angle = point_direction(x, y, target.x, target.y);
    speed = 5;
    direction = angle;
    image_angle = angle;

	if (place_meeting(x, y, target)) {
        target.hp -= obj_player.attackdmg_ranged;
        instance_destroy();
    }
} else {
    instance_destroy();
}