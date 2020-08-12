///checkItemCombine(lineNo, text, obj_character, imageIndex)

itemToCombineWith = argument0;
itemBeingCombined = argument1;

if (grab){
	x = mouse_x + itemBeingCombined.xx;
	y= mouse_y + itemBeingCombined.yy;
	canCombine = true;
	show_debug_message(canCombine)
} else{

	if(position_meeting(mouse_x, mouse_y, itemToCombineWith) && canCombine == true){
		combined = instance_create_depth(itemToCombineWith.x,itemToCombineWith.y,-10000000000,obj_combined);
		instance_destroy(itemBeingCombined);
		instance_destroy(itemToCombineWith);
		exit;
	}
	else{
		x= itemBeingCombined.original_x;
		y= itemBeingCombined.original_y;
		canCombine = false;
		exit;
	}
}