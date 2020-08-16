/// @description Insert description here
// You can write your code in this editor
if(scale > 1){
	scale -= scale_decrease;
	
}
if(mouse_x > checkX and mouse_x < end_x and mouse_y > checkY and mouse_y < end_y)
{
	img_index = 1;
	if(mouse_check_button(mb_left))
	{
		room_goto(rm_puzzle1);
	}
}else{
	img_index = 0;
}