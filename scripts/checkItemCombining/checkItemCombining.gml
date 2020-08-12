///checkItemCombine(itemToCombineWith, itemBeingCombined, list)

itemToCombineWith = argument0;
itemBeingCombined = argument1;
ItemList = argument2;
//beingCominedIndex = ds_list_find_index(ItemList, itemBeingCombined);
//combinedWithIndex = ds_list_find_index(ItemList, itemBeingCombined);
//if(beingCominedIndex > combinedWithIndex){
//	newIndex = combinedWithIndex;
//} else{
//	newIndex = beingCominedIndex;
//}
if (grab){
	x = mouse_x + itemBeingCombined.xx;
	y= mouse_y + itemBeingCombined.yy;
	canCombine = true;
} else{ 

	if(position_meeting(mouse_x, mouse_y, itemToCombineWith) && canCombine == true){
		combined = instance_create_depth(itemToCombineWith.x,itemToCombineWith.y,-10000000000,obj_combined);
		//ds_list_delete(ItemList, beingCominedIndex);
		//ds_list_delete(ItemList, combinedWithIndex);
		//obj_inventory.items[newIndex] = combined;
		//instance_destroy(itemBeingCombined);
		//instance_destroy(itemToCombineWith);
		exit;
	}
	else{
		x= itemBeingCombined.original_x;
		y= itemBeingCombined.original_y;
		canCombine = false;
		exit;
	}
}