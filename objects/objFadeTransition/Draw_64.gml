if (alpha == 0.0) { exit; }

draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(0, 0, width, height, false);

draw_set_color(c_white);
draw_set_alpha(1);