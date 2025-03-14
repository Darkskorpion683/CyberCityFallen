var y_start = obj_player.y - 200; 
var button_width = 350;
var button_height = 70;
var button_spacing = 70;
var num_buttons = max(array_length(all_upgrades), 1);
var menu_width = button_width + 20; // Add some margin
var menu_height = num_buttons * button_spacing;

// Set text alignment
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

for (var i = 0; i < array_length(all_upgrades); i++) {
    var upgrade = all_upgrades[i];
    
    // Calculate the un-clamped positions for buttons (for interaction logic)
    var x_pos_unclamped = obj_player.x - 100;
    var y_pos_unclamped = y_start + i * button_spacing;

    // Clamp only the drawing position (not the click detection position)
    var x_pos = clamp(x_pos_unclamped, 20, room_width - menu_width - 20);
    var y_pos = clamp(y_pos_unclamped, 20, room_height - menu_height - 20);

    // Check if the mouse is hovering over the button (using unclamped positions)
    var hovered = (mouse_x > x_pos_unclamped && mouse_x < x_pos_unclamped + button_width &&
                   mouse_y > y_pos_unclamped && mouse_y < y_pos_unclamped + button_height);

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



