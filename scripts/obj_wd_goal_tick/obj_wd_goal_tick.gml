var n_objs = array_length_1d(linked_objs);
if(is_on and n_objs > 0) {
    _power = min(_power, charge_req);
    
    // Power other object every tick so long as switch is on
	for(i=0;i<n_objs;i++) {
		var obj = linked_objs[i];
	    with(obj) {
	        _power = 256;
	    }
	}
	
} else {
    if(_power >= charge_req) {
        obj_wd_goal_toggle();
    }
}

alarm_set(0, _tick/6);