// Find the nearest target ONCE when the projectile is created
target = instance_nearest(x, y, obj_base_robot);

if (target != noone) {
    // Calculate the initial direction
    var angle = point_direction(x, y, target.x, target.y);
    speed = 5;  // Adjust as needed
    direction = angle;
    image_angle = angle; // Rotate sprite to match movement
}