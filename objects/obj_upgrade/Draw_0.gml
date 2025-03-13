var y_start = obj_player.y - 180; // Move the UI higher
var button_width = 300;
var button_height = 50;
var button_spacing = 60;

// Set text alignment
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

for (var i = 0; i < array_length(all_upgrades); i++) {
    var upgrade = all_upgrades[i];
    var x_pos = obj_player.x;
    var y_pos = y_start + i * button_spacing;

    // Check if the mouse is hovering over the button
    var hovered = (mouse_x > x_pos && mouse_x < x_pos + button_width &&
                   mouse_y > y_pos && mouse_y < y_pos + button_height);

    // Draw outer neon border
    draw_set_color(make_color_rgb(0, 255, 255)); // Bright cyan
    draw_rectangle(x_pos - 2, y_pos - 2, x_pos + button_width + 2, y_pos + button_height + 2, false);

    // Draw inner button with hover effect
    if (hovered) {
        draw_set_color(make_color_rgb(50, 50, 200)); // Lighter blue when hovered
    } else {
        draw_set_color(make_color_rgb(25, 25, 112)); // Default deep blue
    }
    draw_rectangle(x_pos, y_pos, x_pos + button_width, y_pos + button_height, false);

    // Draw neon pink accent lines
    draw_set_color(make_color_rgb(255, 0, 255)); // Neon pink
    draw_line(x_pos, y_pos, x_pos + button_width, y_pos); // Top line
    draw_line(x_pos, y_pos + button_height, x_pos + button_width, y_pos + button_height); // Bottom line

    // Draw text
    draw_set_color(make_color_rgb(0, 255, 255)); // Cyan text
    draw_text(x_pos + 10, y_pos + button_height / 2, upgrade.label);
}



