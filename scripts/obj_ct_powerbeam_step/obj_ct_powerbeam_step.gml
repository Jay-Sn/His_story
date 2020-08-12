// Cheaper computation for collision
if(place_meeting(x, y, obj_p_ct_wired)) {
    
    // Do computationally heavier instance_place function here
    var inst = instance_place(x, y, obj_p_ct_wired);
    if (inst != noone and inst != beam_source) { 
        with(inst) {
            var input_success = 0;
            var abs_rot = get_collision_surface(other.x, other.y, x, y, other.sprite_width, image_angle);
            
            // Update required destination variables
			var cardinal = floor(abs_rot/90);
			input_success = in_enabled[cardinal];
			inputs[cardinal] = input_success;
			
            //if(abs_rot >= 0 and abs_rot < 90) {
            //    input_success = right_in_enabled * 1;
            //    input_xy[0] = right_in_enabled;
            //} else if(abs_rot < 180) {
            //    input_success = top_in_enabled * 2;
            //    input_xy[1] = top_in_enabled;
            //} else if(abs_rot < 270) {
            //    input_success = left_in_enabled * 3;
            //    input_xy[2] = left_in_enabled;
            //} else {
            //    input_success = bottom_in_enabled * 4;
            //    input_xy[3] = bottom_in_enabled;
            //}
            
            if(input_success != 0){
            
                if(is_adv) {
                    _power = other._power;
                    power_in[cardinal] = other._power;
                    for(var j=0; j<3; j++) rgb_in[cardinal, j] = other._rgb[j];
                }
                else if (has_filter) {
					// Filter check
					var check_filter = 0;
					for(var i=0; i<3;i++) check_filter += (filter_rgb[i] == other._rgb[i]);
					
					if(check_filter == 3) {
	                    _power += other._power;
					}
                } else {
					_power += other._power;
	                for(var j=0; j<3; j++) _rgb[j] = other._rgb[j];
				}
            }
            
            // Transfer complete, destroy powerbeam
            instance_destroy(other);
        }
    }
}