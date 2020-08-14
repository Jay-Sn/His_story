/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_mainCharacter)){
	room_goto(GotoRoom);
	obj_mainCharacter.x = targetX;
	obj_mainCharacter.y = targetY;
}