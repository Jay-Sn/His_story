// draw background box
draw_rectangle_color(box_topleft_x, box_topleft_y, box_bottomright_x, box_bottomright_y, c_black, c_black, c_black, c_black, true);
draw_rectangle_color(box_topleft_x, box_topleft_y, box_bottomright_x, box_bottomright_y, c_gray, c_gray, c_gray, c_gray, false);

// draw character sprite
if(character_sprite != undefined) {
	draw_sprite(character_sprite, 0, character_x, character_y); // 0 should be subimg
}

// draw text

var char_x = textbox_topleft_x;
var char_y = textbox_topleft_y;

var strlen = string_length(text);
var cols = 0;

for(i=1;i<=strlen;i++) {
	char = string_copy(text, i, 1);
	draw_text(char_x, char_y, char);
	switch(char) {
		case "\n":
			char_x = textbox_topleft_x;
			char_y += (char_height + line_spacing);
			cols = 0;
			break;
		default:
			cols += 1;
			char_x += (char_width + char_spacing);
			break;
	}
	if(cols >= max_cols) {
		char_x = textbox_topleft_x;
		char_y += (char_height + line_spacing);
		cols = 0;
	}
}