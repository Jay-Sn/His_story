/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_mainCharacter)){
	if(keyboard_check_pressed(ord("X"))){
		room_goto(GotoRoom);
		obj_mainCharacter.x = targetX;
		obj_mainCharacter.y = targetY;
		obj_mainCharacter.image_xscale = scale;
		obj_mainCharacter.image_yscale = scale;
		obj_mainCharacter.SpeedLimit = speedLimit;
	}
}