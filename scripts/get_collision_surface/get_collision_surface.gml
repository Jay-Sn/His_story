/// @description get_collision_surface(x1, y1, x2, y2, width)
/// @function get_collision_surface
/// @param x1 X-coordinate of projectile origin
/// @param y1 Y-coordinate of projectile origin
/// @param x2 X-coordinate of object origin
/// @param y2 Y-coordinate of object origin
/// @param width Width of object
/// @param obj_rot Rotation of object
// Returns the surface where the projectile has collided on an object

var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var width = argument4;
var rot = -wrap(argument5, 0, 360);

var x_tl = x2 - width/2;
var y_tl = y2 - width/2;
var x_br = x2 + width/2;
var y_br = y2 + width/2;


//Vertical check
if(x1 > x_tl and x1 < x_br) {
    //Top check
    if(y1 < y2) rot += 90;
    else if(y1 > y2) rot += 270;
    else {
        if(y1 > y_tl and y1 < y_br) {
            //Left check
            if(x1 < x2) rot += 180;
            else if(x1 > x2) rot += 0;
        }
    }
}

//Horizontal check
else if(y1 > y_tl and y1 < y_br) {
    //Left check
    if(x1 < x2) rot += 180;
    else if(x1 > x2) rot += 0;
}

return wrap(rot, 0, 360);