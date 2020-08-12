///selectCharaDialog(string text, obj_character, image_index, position)

char_text = argument0;
spr_char = argument1;
index_img = argument2;
spriteWidth = sprite_get_width(spr_char);
boxWidth = sprite_get_width(spr_chatbox);
stringHeight = string_height(char_text); 
scale = 3
scale_text = 1.21;
offset = 5;
offsetBySpriteWidth = spriteWidth * scale_text;
offsetByBoxWidth = boxWidth * scale;
if(spr_char == spr_chat_mc){
	
	pos_x = x;
	pos_y = y - 21;
	
	//Draw Sprites
	draw_sprite_ext(spr_chatbox,0,x,y,scale,scale,0,c_white,1);
    draw_sprite_ext(spr_char, index_img, pos_x, pos_y, scale_text, scale_text, 0, c_white, 1);
	
    //Set Font
    draw_set_font(fnt);
	
	//Increase slowly
	if(charCount < string_length(char_text)){	
		charCount += increaseBy; 
	}
	textPart = string_copy(char_text,1,charCount);
	
	//Draw Text
	draw_text_ext(x + offsetBySpriteWidth, y + 6, textPart, stringHeight + offset, offsetByBoxWidth - offsetBySpriteWidth);
	
} else{
	
	pos_x = x + boxWidth * scale - spriteWidth * scale_text - 4;
	pos_y = y - 80;
    draw_sprite_ext(spr_chatbox, 0, x, y, scale, scale, 0, c_white,1);
    draw_sprite_ext(spr_char, index_img, pos_x, pos_y, scale_text, scale_text, 0, c_white,1)
	
    //Draw text
    draw_set_font(fnt);
	
	//Drawing Text
	if(charCount < string_length(char_text)){
		charCount += increaseBy; 
	}
	textPart = string_copy(char_text,1,charCount);
	
    draw_text_ext(x + 6, y + 6, textPart, stringHeight + offset, offsetByBoxWidth - offsetBySpriteWidth);
}