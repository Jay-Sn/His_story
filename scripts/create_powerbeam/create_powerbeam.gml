/// @description scr_ct_create_powerbeam(x, y, rot, src_id, pow, rgb)
/// @function scr_ct_create_powerbeam
/// @param x X-coordinate to spawn powerbeam at
/// @param y Y-coordinate to spawn powerbeam at
/// @param rot Rotation of powerbeam when spawned
/// @param src_id ID of spawner object
/// @param pow Initial power of powerbeam
/// @param rgb RGB values for powerbeam
// Creates a powerbeam at the x and y coordinates with default values.

var xx = argument0;
var yy = argument1;
var rot = argument2;
var src_id = argument3;
var pow = argument4;
var rgb = argument5;

var inst = instance_create_depth(xx, yy, depth, obj_ct_powerbeam);
with(inst) {
    image_angle = rot;
    direction = rot;
    visible = other.visible;
    
    beam_source = src_id;
    _power = pow;
	array_copy(_rgb, 0, rgb, 0, 3);
	
    obj_ct_powerbeam_tick();
}