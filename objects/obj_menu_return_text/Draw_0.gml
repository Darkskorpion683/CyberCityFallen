// Draw black text background
draw_set_color(make_color_rgb(0, 0, 0)); 
draw_set_alpha(.5); // 50% opacity
draw_rectangle(670, 790, 1300, 890, false);  // Adjust size to fit text area
draw_set_font(credit_instructions);

draw_set_alpha(1);
draw_set_color(c_white);
var menu = ("CLICK HERE - return to menu | ESC - Leave game")
draw_text(710, 820, menu)

// Reset text settings to default values
draw_set_font(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);