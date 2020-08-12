if(_power > 0) {

    // Color block
    image_blend = make_colour_rgb(_rgb[0], _rgb[1], _rgb[2]);
    
    // Calculate number of outputs this tick
    var n_out = 0;
    for(var i=0; i<4; i++) n_out += (out_enabled[i] == 1 && out_enabled[i] == 0)
    
    // Distribute power over all available outputs
    for(var i=0; i<4; i++) {
        
        //Generate a powerbeam at the output coordinates
        if(out_enabled[i] == 1 && inputs[i] == 0) {
            var rot = wrap(image_angle+i*90, 0, 360);
            create_powerbeam(x, y, rot, self, 256, _rgb);
        }
        inputs[i] = 0;
    }
    
    _power = 0;
}
else image_blend = make_colour_rgb(255,255,255);

alarm_set(0, _tick/6);