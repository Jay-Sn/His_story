/// @description Declaring Variables
//Test Values
characterScale = 1.21;
current_char = -1;
character = spr_chat_mc;

#region Box Variables
draw = true
monoChar = "D"
draw_set_font(fnt);
char_width = string_width(monoChar);
char_height = string_height(monoChar);
line_spacing = char_height * .5;
char_spacing = 2;

x_margin = 63;
y_margin = 63;

min_lines = 3;
 
inner_x_margin = 3;
inner_y_margin = 3;

posX = x_margin; 


inner_posX = posX + inner_x_margin;


box_width = room_width - x_margin * 2;


inner_box_width = box_width - inner_x_margin * 2;


if(character != noone){
	inner_box_width -= (sprite_get_width(character) * characterScale) + inner_x_margin;
}

max_char_col = floor(inner_box_width / (char_width + char_spacing));

n_lines = max(min_lines,calculateRows(text,max_char_col));
posY = room_height - y_margin - (inner_y_margin * 2) - (n_lines * (char_height+line_spacing));
inner_posY = posY + inner_y_margin;
box_height = (room_height - y_margin) - posY;
inner_box_height = box_height - inner_y_margin * 2;
#endregion


