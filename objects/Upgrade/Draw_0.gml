// Draw Event
// Ensure the camera exists and get its width/height
var gui_w=800
var gui_h=600

// UI Constants (adjusted to make it smaller)
var menu_width = gui_w * 0.2;  // 20% of the camera width (smaller)
var menu_height = gui_h * 0.4; // 40% of the camera height (smaller)

// Use a fixed position to check if the menu is showing up
var menu_x = x;  // Debug fixed position
var menu_y = y;  // Debug fixed position

// Box settings (reduce box height for more compact look)
var box_width = menu_width * 0.8;  // 80% of menu width
var box_height = menu_height / 4;  // Each box takes 1/4th of the menu height (adjusted)
var spacing = 10;  // Reduced spacing
var text_offset = box_width * 0.3;  // Adjust text offset for better alignment

// Weapon array and upgrades
var weapons = [
    {name: "Ranged Weapon", sprite: spr_projectile_weapon, upgrade: ranged_weapon_upgrade},
    {name: "AOE Weapon", sprite: spr_aoe_weapon, upgrade: aoe_weapon_upgrade},
    {name: "Melee", sprite: spr_base_weapon, upgrade: melee_weapon_upgrade},
    {name: "Armor", sprite: spr_Character_Idle_Suit, upgrade: armor_upgrade}
];

// Initialize hovered_weapon as an empty string
hovered_weapon = "";

// Get hovered weapon index based on mouse position
for (var i = 0; i < array_length(weapons); i++) {
    var wx = menu_x + (menu_width - box_width) / 2; // Center inside menu
    var wy = menu_y + (i * (box_height + spacing)) + 40; // Space items properly

    if (mouse_x > wx && mouse_x < wx + box_width &&
        mouse_y > wy && mouse_y < wy + box_height) {
        hovered_weapon = weapons[i].name; // Store the name of the hovered weapon
    }
}

// Draw UI (Centered on the player's position)
draw_set_alpha(1);  // Ensure full opacity

// Debug: Draw a simple rectangle at the calculated menu position
draw_set_color(c_red);
draw_rectangle(menu_x, menu_y, menu_x + menu_width, menu_y + menu_height, false);

// Draw menu background
draw_set_color(c_black);
draw_rectangle(menu_x, menu_y, menu_x + menu_width, menu_y + menu_height, false);

// Draw weapon selection boxes
for (var i = 0; i < array_length(weapons); i++) {
    var wx = menu_x + (menu_width - box_width) / 2; // Centered box
    var wy = menu_y + (i * (box_height + spacing)) + 40;

    // Highlight box if hovered (check against the weapon's name)
    draw_set_color(hovered_weapon == weapons[i].name ? c_yellow : c_white);
    draw_rectangle(wx, wy, wx + box_width, wy + box_height, false);

    // Center sprite inside the box (ensure the sprite fits)
    var sprite_x = wx + (box_width - sprite_get_width(weapons[i].sprite)) / 2;
    var sprite_y = wy + (box_height - sprite_get_height(weapons[i].sprite)) / 2;
    draw_sprite(weapons[i].sprite, 0, sprite_x, sprite_y);

    // Draw weapon name centered in the box
    draw_set_color(c_white);
    draw_text(wx + text_offset, wy + box_height / 3, weapons[i].name);

    // Display upgrade information when hovering
    if (hovered_weapon == weapons[i].name) {
        draw_set_color(c_green);
        draw_text(wx + text_offset, wy + box_height / 2, "+ " + string(weapons[i].upgrade[0]));
        draw_text(wx + text_offset, wy + box_height / 2 + 20, "+ " + string(weapons[i].upgrade[1]));
    }
}


