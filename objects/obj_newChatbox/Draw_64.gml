/// @description Insert description here
// You can write your code in this editor

if(!draw) exit;
//Drawing Outer Rectangle
draw_set_color(c_black);
draw_rectangle(posX,posY,posX + box_width, posY + box_height, false);

//Draw Inner Rectangle
if(character != noone){
	//drawing of box
	characterWidth = sprite_get_width(character) * characterScale;
	characterHeight = sprite_get_height(character) * characterScale;
	chara_y = inner_posY + characterWidth + (inner_box_height - (characterHeight))/2;
	draw_set_color(c_gray);
	draw_rectangle(inner_posX,inner_posY,inner_posX + inner_box_width, inner_posY + inner_box_height, false);
	draw_sprite_ext(character,0,inner_posX,chara_y,characterScale,characterScale,0,c_white,1);
	draw_rectangle(characterWidth + inner_posX + inner_x_margin, inner_posY, inner_posX + inner_box_width +characterWidth + inner_x_margin, inner_posY + inner_box_height, false);
	
	//drawing of text
	stringLength = string_length(text);
	
	var xx = inner_posX + characterWidth + inner_x_margin;
	var char_x = xx;
	var char_y = inner_posY + line_spacing;
	draw_set_font(fnt);
	draw_set_color(c_black);
	
	var char_index = 0
	
	for(var row = 1;  row < n_lines; row++){
		if(char_index >= stringLength){
			break;
		}
		for(var col = 0; col <= max_char_col; col++){
			char = string_copy(text, char_index, 1);
			char_index += 1;
			nextchar = string_copy(text, char_index + 1, 1);
	        switch(nextchar) {
	            case "\n":
					show_debug_message("NewLine by N")
	                col = 0;
					row ++;
	                break;
	        }
			show_debug_message(char_index)
		}
		show_debug_message("NewLine")
	}
	
#region
	//for(i=0;i<stringLength;i++) {
	//    char = string_copy(text, i, 1);
		
	//    if(char == "\\" and i != stringLength-1) {
	//        // Handle special characters
	//        nextchar = string_copy(text, i+1, 1);
	//        switch(nextchar) {
	//            case "n":
	//                rows += 1;
	//                i += 1;
	//                break;
	//        }
			
	//    } else {
	//        cols += 1;
	//        if(cols> max_char_col){ 
	//			rows += 1;
	//			cols = 0;
	//		}
	//    }
	//}

	//for(var r = 0; r <  n_lines; r++){
	//	for(var c = 0; c < max_char_col; c++){
	//		c_index = r * max_char_col + c + 1
	//		if(c_index <= current_char){
	//			char = string_copy(text,c_index,1);
	//			if(char == "\\" and c_index != stringLength-1) {
	//		    // Handle special characters
	//		        nextchar = string_copy(text, c_index+1, 1);
	//		        switch(nextchar) {
	//		            case "n":
	//						c++;
	//						char_x = xx;
	//						char_y += (char_height + line_spacing);
	//		                break;
	//				}
	//				continue;
	//			} else {
	//				draw_text(char_x,char_y,char);
	//			}
				
	//		}
	//		else break;
			
	//		// Increment char_x
	//		char_x += (char_width + char_spacing);
	//	}

	//	char_x = xx;
	//	char_y += (char_height + line_spacing);
	//}
	
	//current_char = min(current_char + 1, stringLength);
	#endregion
}else{
	draw_set_color(c_gray);
	draw_rectangle(inner_posX,inner_posY,inner_posX + inner_box_width, inner_posY + inner_box_height, false);
}