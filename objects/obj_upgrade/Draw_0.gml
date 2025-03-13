// Draw Event of obj_upgrade

var x_offset = 50;  // Horizontal offset from player position
var y_offset = -100; // Vertical offset from player position
var button_height = 60; // Height of each button to make spacing more comfortable

// Set text alignment
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

for (var i = 0; i < array_length(all_upgrades); i++) {
    var upgrade = all_upgrades[i];
    var x_pos = obj_player.x + x_offset;
    var y_pos = obj_player.y + y_offset + i * button_height;
    
    // Button dimensions
    var button_width = 300;
    var button_height_actual = 50;

    // Draw outer neon border
    draw_set_color(make_color_rgb(0, 255, 255)); // Bright cyan
    draw_rectangle(x_pos - 2, y_pos - 2, x_pos + button_width + 2, y_pos + button_height_actual + 2, false);

    // Draw inner glowing button (dark purple-blue)
    draw_set_color(make_color_rgb(25, 25, 112)); // Cyberpunk deep blue
    draw_rectangle(x_pos, y_pos, x_pos + button_width, y_pos + button_height_actual, false);

    // Add secondary glowing accent lines
    draw_set_color(make_color_rgb(255, 0, 255)); // Neon pink
    draw_line(x_pos, y_pos, x_pos + button_width, y_pos); // Top line
    draw_line(x_pos, y_pos + button_height_actual, x_pos + button_width, y_pos + button_height_actual); // Bottom line

    // Draw the text in a neon color
    draw_set_color(make_color_rgb(0, 255, 255)); // Cyan text
    draw_text(x_pos + 10, y_pos + button_height_actual / 2, upgrade.label);
}



