/// sysInit()

display_set_gui_size(640, 360);

var fontMap = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZÁÉÍÓÚabcdefghijklmnñopqrstuvwxyzáéíóú0123456789¡!¿?()\"'.,-/ü: ";
global.PIXEL_FONT = font_add_sprite_ext(sprFont, fontMap, true, 1);

global.KEY_UP = vk_up;
global.KEY_RIGHT = vk_right;
global.KEY_LEFT = vk_left;
global.KEY_DOWN = vk_down;
global.KEY_ACTION = ord("Z");

global.PLACE_PLAYER_AT = noone;

global.PAUSE = false;