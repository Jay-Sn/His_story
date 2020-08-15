var _chara_sprite = argument0;
var _subimg = argument1;
var _text = argument2;
var _prereq_scr_ind = argument3;
var _ontrigger_scr_ind = argument4;
// line _prereq_fail_interaction manually.
// link next_interaction manually.

var interaction = instance_create_depth(x, y, depth, obj_interaction);
with(interaction) {
	chara_sprite = _chara_sprite;
	subimg = _subimg;
	text = _text;
	prereq_scr_ind = _prereq_scr_ind;
	ontrigger_scr_ind = _ontrigger_scr_ind;
}

return interaction;