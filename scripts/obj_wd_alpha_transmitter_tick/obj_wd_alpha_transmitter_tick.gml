var n_objs = array_length_1d(linked_objs);

if(_power > 0) {
	sprite_index = spr_alpha_transmitter_active;
} else {
	sprite_index = spr_alpha_transmitter_inactive;
}

if(n_objs > 0) {    
	for(i=0;i<n_objs;i++) {
		var obj = linked_objs[i];
		with(obj) {
			if(other._power > 0) image_alpha = 100;
			else image_alpha = 0;
		}
	}
}

_power = 0;

alarm_set(0, _tick/6);