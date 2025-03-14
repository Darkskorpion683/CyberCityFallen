// Shader logic
shader_set(shd_color_tint);

var color; 
color = [0.0, 0.0, 0.0]; // No tint for Level 1
var hit_color = [1.0, 0.0, 0.0]; // Red tint for hitmarker

// Determine which color to pass to the shader
if (hit_timer > 0) {
    shader_set_uniform_f(shader_get_uniform(shd_color_tint, "filter_color"), hit_color[0], hit_color[1], hit_color[2]);
    hit_timer--;
} else {
    shader_set_uniform_f(shader_get_uniform(shd_color_tint, "filter_color"), color[0], color[1], color[2]);
}

// Draw the sprite
draw_self();

// Reset shader to prevent affecting other objects
shader_reset();

