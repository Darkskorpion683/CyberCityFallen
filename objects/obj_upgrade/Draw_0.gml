// Set text alignment (both vertical and horizontal)
draw_set_valign(fa_middle);
draw_set_halign(fa_center); // Center horizontally

// Define the size of the UI element (button)
var ui_width = button_width;
var ui_height = button_height;
var button_spacing = 10; // Adjust to your preferred spacing

// Get the camera view's position and size
var camera_x = camera_get_view_x(view_camera[0]); 
var camera_y = camera_get_view_y(view_camera[0]);
var camera_width = camera_get_view_width(view_camera[0]);  
var camera_height = camera_get_view_height(view_camera[0]);

// Calculate the center of the camera's view
var camera_center_x = camera_x + (camera_width / 2);
var camera_center_y = camera_y + (camera_height / 2);

// Get total height needed for all buttons
var total_button_height = (ui_height + button_spacing) * array_length(all_upgrades);

// Start positioning from the center but shift up if needed
var x_pos = camera_center_x - (ui_width / 2);
var y_start = camera_center_y - (total_button_height / 2); // Start in the middle

// Ensure it doesn't go below the screen
if (y_start + total_button_height > room_height - 20) {
    y_start = room_height - total_button_height - 20;
}
// Ensure it doesn't go too high
if (y_start < 20) {
    y_start = 20;
}

for (var i = 0; i < array_length(all_upgrades); i++) {
    var upgrade = all_upgrades[i];

    var y_pos = y_start + (i * (ui_height + button_spacing));

    // Ensure UI doesn’t go off the right side
    if (x_pos + ui_width > room_width - 20) {
        x_pos = room_width - ui_width - 20; 
    } 

    // Check if the mouse is hovering over the button
    var hovered = (mouse_x > x_pos && mouse_x < x_pos + button_width &&
                   mouse_y > y_pos && mouse_y < y_pos + button_height);

    // If the button is clicked, apply the upgrade
    if (hovered) {
        apply_upgrade(upgrade);
    }

    // Draw outer neon border
    draw_set_color(make_color_rgb(0, 255, 255));
    draw_rectangle(x_pos - 2, y_pos - 2, x_pos + button_width + 2, y_pos + button_height + 2, false);

    // Draw inner button with hover effect
    draw_set_color(hovered ? make_color_rgb(50, 50, 200) : make_color_rgb(25, 25, 112));
    draw_rectangle(x_pos, y_pos, x_pos + button_width, y_pos + button_height, false);

    // Draw neon pink accent lines
    draw_set_color(make_color_rgb(255, 0, 255));
    draw_line(x_pos, y_pos, x_pos + button_width, y_pos);
    draw_line(x_pos, y_pos + button_height, x_pos + button_width, y_pos + button_height);

    // Draw text centered inside the button
    draw_set_color(make_color_rgb(0, 255, 255));
    draw_text(x_pos + button_width / 2, y_pos + button_height / 2, upgrade.label);
}





