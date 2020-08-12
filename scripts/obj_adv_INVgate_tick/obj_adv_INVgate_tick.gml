if(power_in[2] > 0) {

    var count = 0;
    
    // Check adv rgb inputs
    for(var j=0; j<3; j++) {
        if(rgb_in[2, j] != 0) {
            count += 1;
            break;
        }
    }
    
    if(count == 1) {
        var new_rgb = array_create(3);
        var new_ct = power_in[2];
        for(var i=0; i<3; i++) new_rgb[i] = wrap(255 - rgb_in[2, i], 0, 255);
        
        // Color block
        image_blend = make_colour_rgb(new_rgb[0], new_rgb[1], new_rgb[2]);
        
        var rot = wrap(image_angle, 0, 360);
        
        //Generate a powerbeam at the output coordinates
        create_powerbeam(x, y, rot, self, new_ct, new_rgb);
    }
    
    power_in[2] = 0;
    for(var j=0; j<3; j++) rgb_in[2, j] = 0;

}
else image_blend = make_colour_rgb(255,255,255);

alarm_set(0, _tick/6);