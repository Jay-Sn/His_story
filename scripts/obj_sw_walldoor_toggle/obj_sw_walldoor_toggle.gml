is_on = !is_on;

if(is_on) {
     door_part = instance_create_depth(x, y, depth-1 ,obj_part_walldoor);
     with(door_part) {
        image_xscale = other.image_xscale;
        image_yscale = other.image_yscale;
        image_angle = other.image_angle;
     }
}
else {
    if(door_part != noone and instance_exists(door_part))
        instance_destroy(door_part);
}