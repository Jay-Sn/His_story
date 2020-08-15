var _chara_sprite = argument0;
var _subimg = argument1;
var _text = argument2;

var textbox = instance_create_depth(x, y, depth, obj_textbox);
with(textbox) {
	character_sprite = _chara_sprite;
	subimg = _subimg;
	text = _text;
	
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
	
	// calculate max cols
	var textbox_width = textbox_bottomright_x - textbox_topleft_x;
	textbox_width -= char_width; // Account for extra character at end
	max_cols = floor(textbox_width/(char_width + char_spacing)) + 1; // Add back end character
	
	textbox_recalculate();
}

return textbox;