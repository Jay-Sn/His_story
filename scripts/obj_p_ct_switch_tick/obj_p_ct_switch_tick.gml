// Handle toggling switch in child objs

var n_objs = array_length_1d(linked_objs);
if(n_objs !=0) {
    
	// Power other object every tick so long as switch is on
	for(i=0;i<n_objs;i++) {
		var obj = linked_objs[i];
		if(obj != noone) {
			with(obj) {
		        _power = 256 * other.is_on;
		    }
		}
	}
    
}

prev_power = _power;

alarm_set(0, _tick/6);