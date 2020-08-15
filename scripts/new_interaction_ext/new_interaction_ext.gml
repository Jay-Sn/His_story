 var _chara_sprite = argument0;
var _subimg = argument1;
var _text = argument2;
var _textspeed = argument3;
var _char_spacing = argument4;
var _sansmode = argument5;
// link next_interaction manually.

var interaction = instance_create_depth(x, y, depth, obj_interaction);
with(interaction) {
	chara_sprite = _chara_sprite;
	subimg = _subimg;
	text = _text;
	draw_text_speed = _textspeed;
	char_spacing = _char_spacing;
	sansmode = _sansmode;
}

return interaction;