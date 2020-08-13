if(prev_power != _power) obj_sw_walldoor_toggle();

event_inherited();

alarm_set(0, _tick);