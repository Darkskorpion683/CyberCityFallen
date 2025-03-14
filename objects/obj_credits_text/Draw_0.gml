// Draw black text background
draw_set_color(make_color_rgb(0, 0, 0)); 
draw_set_alpha(.5); // 50% opacity
draw_rectangle(383,160, 1537, 960, false);  // Adjust size to fit text area

// Set the font
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_aqua);
draw_set_alpha(1);

// Draw the instructions title
draw_set_font(title_font);
var title = ("Credits");
draw_text_ext(820, 194, title, 100, 900);

var text = ("Designer - Ethan Beeson\nArtist - John Gould\nProducer - Gabe Herterich");

// Draw the text with word wrapping to fit screen
draw_set_font(credit_instructions);
draw_text_ext(544, 394, text, 150, 800);


var menu = ("<-- Return to menu")
draw_text_ext(800, 880, menu, 100, 800)

// Reset text settings to default values
draw_set_font(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
