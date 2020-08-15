text = "";
character_sprite = undefined;
subimg = 0;

outer_x_margin = 28;
outer_y_margin = 28;

inner_x_margin = 14;
inner_y_margin = 14;

box_topleft_x = outer_x_margin;
box_topleft_y = room_height - (outer_y_margin + 2 * inner_y_margin); // - content height
box_bottomright_x = room_width - outer_x_margin;
box_bottomright_y = room_height - outer_y_margin;

// border|--|box|-|character|-|speech text here|-|box|--|border

// Default textbox coordinates

textbox_topleft_x = box_topleft_x + inner_x_margin;
textbox_topleft_y = box_topleft_y + inner_y_margin; // - content height
textbox_bottomright_x = box_bottomright_x - inner_x_margin;
textbox_bottomright_y = box_bottomright_y - inner_y_margin;

// character calculations
added_character_x_margin = 0;

if(character_sprite != undefined) {
	character_width = sprite_get_width(character_sprite);
	character_height = sprite_get_height(character_sprite);
	
	added_character_x_margin = character_width + inner_x_margin;
	character_y = textbox_bottomright_y;
	
	if(character_sprite == spr_chat_mc) {
		character_x = textbox_topleft_x;
		textbox_topleft_x += added_character_x_margin;
	} else {
		character_x = textbox_bottomright_x;
		textbox_bottomright_x -= added_character_x_margin;
	}
}

// calculate font sizes
draw_set_font(fnt);
char_width = string_width("X");
char_height = string_height("X");

// spacings
char_spacing = 0;
line_spacing = -0.1;

// calculate max cols
var textbox_width = textbox_bottomright_x - textbox_topleft_x;
textbox_width -= char_width; // Account for extra character at end
max_cols = floor(textbox_width/(char_width + char_spacing)) + 1; // Add back end character

// row init
min_rows = 4;

// character by character loading
current_max_strlen = 1;
draw_text_speed = 0.5;

// highlights
highlights = array_create(0);

textbox_recalculate();