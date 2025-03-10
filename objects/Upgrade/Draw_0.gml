var y_offset = 100; // Start drawing at an offset
var box_width = 200;
var box_height = 80;
var spacing = 20;

// Weapon selection boxes
var weapons = [
    {name: "Projectile Weapon", upgrade: projectile_weapon_upgrade, sprite: spr_projectile_weapon, id: "laser"},
    {name: "Aoe Weapon", upgrade: aoe_weapon_upgrade, sprite: spr_aoe_weapon, id: "plasma"},
    {name: "melee", upgrade: melee_weapon_upgrade, sprite: spr_base_weapon, id: "melee"}
];

// Detect mouse hover & draw boxes
hovered_weapon = "";
for (var i = 0; i < array_length(weapons); i++) {
    var wx = x; 
    var wy = y + y_offset + (i * (box_height + spacing));

    // Check if mouse is hovering over this box
    if (mouse_x > wx && mouse_x < wx + box_width &&
        mouse_y > wy && mouse_y < wy + box_height) {
        draw_set_color(c_yellow); // Highlight the hovered box
        hovered_weapon = weapons[i].id;
    } else {
        draw_set_color(c_white);
    }

    // Draw selection box
    draw_rectangle(wx, wy, wx + box_width, wy + box_height, false);

    // Draw weapon sprite
    draw_sprite(weapons[i].sprite, 0, wx + 10, wy + (box_height / 2) - 16);

    // Draw weapon name
    draw_text(wx + 50, wy + 10, weapons[i].name);

    // Display bonuses when hovering
    if (hovered_weapon == weapons[i].id) {
        draw_set_color(c_green);
        draw_text(wx + 50, wy + 30, "+ " + string(weapons[i].bonus[0]));
        draw_text(wx + 50, wy + 50, "+ " + string(weapons[i].bonus[1]));
    }
}