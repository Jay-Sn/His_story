var n_objs = array_length_1d(linked_objs);

if(_power > 0) {
	sprite_index = spr_int_transmitter_active;
} else {
	sprite_index = spr_int_transmitter_inactive;
}

if(n_objs > 0) {    
    // Power other object every tick so long as switch is on
	for(i=0;i<n_objs;i++) {
		var obj = linked_objs[i];
		if(obj != noone and obj.object_index == obj_interactable) { 
		    with(obj) {
		        is_enabled = other._power > 0;
				if(is_enabled and has_item) {
					with(bound_star) visible = true;
				} else {
					with(bound_star) visible = false;
				}
		    }
		}
	}
}

_power = 0;

alarm_set(0, _tick/6);