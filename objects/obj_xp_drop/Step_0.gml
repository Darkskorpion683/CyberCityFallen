
// ANIMATING XP DROP
// Update bounce offset
bounce_offset += bounce_speed

// Calculate vertical position using sine wave
var bounce_y = sin(bounce_offset) * bounce_height

// Apply the bounce to the y-position
y = ystart + bounce_y