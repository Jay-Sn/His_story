var n_objs = array_length_1d(linked_objs);

if(_power > 0) {
	sprite_index = spr_transmitter_active;
} else {
	sprite_index = spr_transmitter_inactive;
}

if(n_objs > 0) {    
    // Power other object every tick so long as switch is on
	for(i=0;i<n_objs;i++) {
		var obj = linked_objs[i];
	    with(obj) {
	        _power = other._power;
	    }
	}
}

_power = 0;

alarm_set(0, _tick/6);