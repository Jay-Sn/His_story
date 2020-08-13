var n_obj = array_length_1d(linked_objs);
    if(n_obj > 0) {
        for(var i=0; i<n_obj; i++) {
			var obj = linked_objs[i];
            if(obj != noone){
                // Power other object every tick so long as switch is on
                with(obj) {
                    if(other._power <= 0) _power = 256;
					else _power = 0;
                }
            }
        }
    }
_power = 0;

alarm_set(0, _tick/6);