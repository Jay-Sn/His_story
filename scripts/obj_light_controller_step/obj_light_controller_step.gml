// Surfaces are volatile 
// Always check that they haven't been destroyed 
if (surface_exists(surf)) {
    if(is_on) {
        surface_set_target(surf);
    
        // The following three lines set the 'dark' overlay
        draw_set_color(c_black);
        draw_set_alpha(0.95);
        draw_rectangle(0, 0, room_width, room_height, 0);

        // Setting the blend mode to 'subtract' is what allows us to "cut holes" out of the overlay
        gpu_set_blendmode(bm_subtract);
        draw_set_color(c_white);
        
        // Draw circles in the overlay with your different light sources
        // Note that I add randomization to the position and radius to mimic a flicker effect
		if(object_exists(obj_ct_controller)) {
			if(obj_ct_controller.visible) {
		        with (obj_ct_powerbeam)
		            draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 4 + random_range(-1, 1), false);
            
		        with (obj_p_ct_wired)
		            if(image_alpha > 0) draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 24 + random_range(-1, 1), false);
					
				with (obj_p_ct_switch)
		            if(image_alpha > 0) draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 24 + random_range(-1, 1), false);
            
		        with(obj_p_wd_advanced)
		            if(power_in[0] > 0 or power_in[1] > 0 or power_in[2] > 0 or power_in[3] > 0)
		                draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 24 + random_range(-1, 1), false);
			}
		}
		
		with (obj_sw_light)
			if(_power > 0) draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 512 + random_range(-1, 1), false);
        
		with (obj_mainCharacter)
			draw_circle(x + random_range(-1, 1), y + lengthdir_y(120, 90) + random_range(-1, 1), 64 + random_range(-1, 1), false);
		
        // Reset all of your draw stuff
        gpu_set_blendmode(bm_normal);
        draw_set_alpha(1);
        surface_reset_target();
    } else {
        surface_free(surf);
    }
    
} else {
    // Again, surfaces can be a pain
    // Create a new one if there were issues
    surf = surface_create(room_width, room_height);
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
}