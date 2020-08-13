  ///@description Changing of characters
if(can_display <0){
	can_display = 0;
}
else{
	can_display --;
}
if(keyboard_check(ord("X")) and can_display == 0){
	charCount = 0;
	if(page + 1 < array_length_1d(text)){
		page += 1;
		can_display = 50;
		
	} else{
		instance_destroy();
		creator.alarm[1] = 50;
	}
}

 