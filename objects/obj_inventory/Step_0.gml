/// @description Insert description here
// You can write your code in this editor

//Display Inventory
if(itemCount+1 < array_length_1d(items) and displayInventory){
	//show_debug_message(items[itemCount]);
	pos_x += offset_x;
	itemCount += 1;
	
}
else{
	displaying = false;
	displayInventory= false;
	//Closing Inventory
	//show_debug_message(array_length_1d(items));
	if(itemCount >= 0 and closeInventory){
		instance_destroy(items[itemCount]);
		
		itemCount -= 1;
		if(itemCount == -1){
			instance_destroy();
		}
		//show_debug_message(itemCount);
	}
	else{
		closeInventory = false;
		//displaying = true;
		//displayInventory= true;
		//itemCount = 0;
	}
}

