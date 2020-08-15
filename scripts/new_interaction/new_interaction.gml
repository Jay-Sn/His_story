var _chara_sprite = argument0;
var _subimg = argument1;
var _text = argument2;
// link next_interaction manually.

var interaction = instance_create_depth(x, y, depth, obj_interaction);
with(interaction) {
	chara_sprite = _chara_sprite;
	subimg = _subimg;
	text = _text;
}

return interaction;