// draw background box
draw_rectangle_color(box_topleft_x, box_topleft_y, box_bottomright_x, box_bottomright_y, c_black, c_black, c_black, c_black, true);
draw_rectangle_color(box_topleft_x, box_topleft_y+1, box_bottomright_x, box_bottomright_y, c_gray, c_gray, c_gray, c_gray, false);

// draw character sprite
if(character_sprite != undefined) {
	draw_sprite(character_sprite, subimg, character_x, character_y);
}

// draw text
draw_set_font(fnt);
draw_set_color(c_black);

var char_x = textbox_topleft_x;
var char_y = textbox_topleft_y+5;

var strlen = min(floor(current_max_strlen), string_length(text));
var cols = 0;
var row = 0;

var highlights_length = array_length_1d(highlights);

var recently_wrapped = false;

for(i=1;i<=strlen;i++) {
	char = string_copy(text, i, 1);
	
	if(highlights_length-row > 0) draw_set_color(highlights[row]);
	draw_text(char_x, char_y, char);
	draw_set_color(c_black);
	
	switch(char) {
		case "\n":
			if(!recently_wrapped) {
				char_x = textbox_topleft_x;
				char_y += (char_height + line_spacing);
				row += 1;
				cols = 0;
			} else recently_wrapped = false;
			break;
		case " ":
			if(!recently_wrapped) {
				cols += 1;
				char_x += (char_width + char_spacing);
			} else recently_wrapped = false;
			break;
		default:
			cols += 1;
			char_x += (char_width + char_spacing);
			recently_wrapped = false;
			break;
	}
	if(cols >= max_cols) {
		char_x = textbox_topleft_x;
		char_y += (char_height + line_spacing);
		row += 1;
		cols = 0;
		recently_wrapped = true;
	}
}

current_max_strlen += draw_text_speed;

//draw_set_color(c_yellow);
//draw_rectangle(textbox_topleft_x, textbox_topleft_y, textbox_bottomright_x, textbox_bottomright_y, true);