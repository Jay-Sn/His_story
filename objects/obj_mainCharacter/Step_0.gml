///@description Movement for character
//Keyboard movements
depth = -y;
// Variable Initialisation
var speed_limit = SpeedLimit;
var hor = false;
var vert = false;

// Movement Keybinds
if(keyboard_check(vk_shift)) speed_limit +=3;

if(keyboard_check(vk_left) and !is_interacting) {
    hspd -=speed_increment;
	image_index = 1;
    hor = true;
}
else if(keyboard_check(vk_right) and !is_interacting) {
    hspd +=speed_increment;
	image_index = 3;
    hor = true;
}
if(keyboard_check(vk_up) and !is_interacting) {
    vspd -=speed_increment;
	image_index = 2;
    vert = true;
}
else if(keyboard_check(vk_down) and !is_interacting) {
    vspd +=speed_increment;
	image_index = 0;
    vert = true;
}

// Diagonal Speed Management
if(hor == true and vert == true) {
    speed_limit *= 0.707;
}

// Speed Limiters
if(hspd > speed_limit) hspd = speed_limit;
if(vspd > speed_limit) vspd = speed_limit;
if(hspd < -speed_limit) hspd = -speed_limit;
if(vspd < -speed_limit) vspd = -speed_limit;

// Collision Checks
repeat(abs(hspd)) {
   if (!place_meeting(x + sign(hspd), y, obj_collidable)) {
       x += sign(hspd);
    } else {
       hsp = 0;
       break;
    }
}

repeat(abs(vspd)) {
   if (!place_meeting(x, y + sign(vspd), obj_collidable)) {
       y += sign(vspd);
    } else {
       hsp = 0;
       break;
    }
}

// Apply Friction
hspd -= sign(hspd)*friction;
vspd -= sign(vspd)*friction;

// hspd/vspd Deadzone
if(hspd < 1 and hspd > -1) hspd = 0;
if(vspd < 1 and vspd > -1) vspd = 0;

// Out Of Bounds Checks
if(x > room_width-16) x = room_width-16;
if(x < 16) x = 16;
if(y > room_height-16) y = room_height-16;
if(y < 16) y = 16;

