function scr_spawning(enemy) {
    var rand_y = irandom_range(0, 2);
    
    if rand_y == 0 { enemy.y = 0 - enemy.sprite_height; } // Spawn above room
    if rand_y == 1 { enemy.y = irandom_range(0 - enemy.sprite_yoffset, room_height + enemy.sprite_yoffset); } // Spawn on sides
    if rand_y == 2 { enemy.y = room_height + enemy.sprite_height; } // Spawn below room

    enemy.x = irandom_range(0 - enemy.sprite_xoffset, room_width + enemy.sprite_xoffset);
}
