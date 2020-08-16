///@description Set default display
// You can write your code in this editor
image_index = 0;
image_speed	= 0;
canPress = true;
inventoryDisplay = noone;
friction = 1;
speed_increment = 2;
hspd = 0;
vspd = 0;
SpeedLimit = 7;
audio_play_sound(sd_starting_ost, 1, true);
inventory = instance_create_depth(x, y, depth, obj_inventory);

is_interacting = false;