text = "This is an example string.\nThis is a second line";
character_sprite = spr_chat_mc;

var outer_x_margin = 28;
var outer_y_margin = 28;

var inner_x_margin = 14;
var inner_y_margin = 14;

box_topleft_x = outer_x_margin;
box_topleft_y = room_height - (outer_y_margin + 2 * inner_y_margin); // - content height
box_bottomright_x = room_width - outer_x_margin;
box_bottomright_y = room_height - outer_y_margin;

// border|--|box|-|character|-|speech text here|-|box|--|border

// Default textbox coordinates

textbox_topleft_x = box_topleft_x + inner_x_margin;
textbox_topleft_y = box_topleft_y - inner_y_margin; // - content height
textbox_bottomright_x = box_bottomright_x - inner_x_margin;
textbox_bottomright_y = box_bottomright_y - inner_y_margin;

// character calculations
added_character_x_margin = 0;

if(character_sprite != undefined) {
	character_width = sprite_get_width(character_sprite);
	character_height = sprite_get_height(character_sprite);
	
	added_character_x_margin = character_width + inner_x_margin;
	character_y = textbox_topleft_y + character_height * 1.5;
	
	if(character_sprite == spr_chat_mc) {
		textbox_topleft_x += added_character_x_margin;
		character_x = textbox_topleft_x;
	} else {
		textbox_bottomright_x -= added_character_x_margin;
		character_x = textbox_bottomright_x;
	}
}

// calculate font sizes
draw_set_font(fnt);
char_width = string_width("X");
char_height = string_height("X");

// spacings
char_spacing = 3;
line_spacing = char_height * 0.5;

// calculate max cols
var textbox_width = textbox_bottomright_x - textbox_topleft_x;
textbox_width -= char_width; // Account for extra character at end
max_cols = floor(textbox_width/(char_width + char_spacing)) + 1; // Add back end character

chatbox_v2_recalculate();