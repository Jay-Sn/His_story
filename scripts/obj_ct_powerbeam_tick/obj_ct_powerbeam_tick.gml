_power = max(_power-8, 0);
if(_power == 0) instance_destroy();

image_blend = make_colour_rgb(_rgb[0], _rgb[1], _rgb[2])
image_alpha = _power/256;

alarm_set(0, _tick);