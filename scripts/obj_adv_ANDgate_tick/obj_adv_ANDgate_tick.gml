if(power_in[0] > 0 and power_in[2] > 0) {

    var left_in = 0;
    var right_in = 0;
    
    // Check adv rgb inputs
    for(var i=0; i<3; i++) {
        if(rgb_in[0, i] != 0) {
            left_in += 1;
        }
    }
    for(var i=0; i<3; i++) {
        if(rgb_in[2, i] != 0) {
            right_in += 1;
        }
    }
    
    
    if(left_in == right_in and left_in < 3) {
        var new_rgb = array_create(3);
        var new_ct = power_in[0] + power_in[2];
        
        // Use different algorithms for RGB vs CMYK
        if(left_in == 1) {
            for(var i=0; i<3; i++) new_rgb[i] = min(255, (rgb_in[0, i] + rgb_in[2, i]));
        }
        else for(var i=0; i<3; i++) new_rgb[i] = wrap((rgb_in[0, i] + rgb_in[2, i])-255, 0, 255);
        
        // Color block
        image_blend = make_colour_rgb(new_rgb[0], new_rgb[1], new_rgb[2]);
        
        var rot = wrap(image_angle+270, 0, 360);
        
        //Generate a powerbeam at the output coordinates
        create_powerbeam(x, y, rot, self, new_ct, new_rgb);
    }

}
else image_blend = make_colour_rgb(255,255,255);

power_in[0] = 0;
power_in[2] = 0;
for(var i=0; i<2; i+=2) for(var j=0; j<3; j++) rgb_in[i, j] = 0;

alarm_set(0, _tick/6);