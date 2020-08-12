if(_power > 0) is_on = true;
else is_on = false;

if(is_on) {
	sprite_index = spr_light_active;
} else {
	sprite_index = spr_light_inactive;
}