// Shader logic
shader_set(shd_color_tint);

var color; 
color = [0.0, 1.0, 0.0]; // Green tint for Level 1


// Pass color data to shader
shader_set_uniform_f(shader_get_uniform(shd_color_tint, "filter_color"), color[0], color[1], color[2]);

// Draw the sprite
draw_self();

// Reset shader to prevent affecting other objects
shader_reset();