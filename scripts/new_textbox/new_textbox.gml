var _chara_sprite = argument0;
var _subimg = argument1;
var _text = argument2;
var _highlights = argument3;

var textbox = instance_create_depth(x, y, depth, obj_textbox);
with(textbox) {
	character_sprite = _chara_sprite;
	subimg = _subimg;
	text = _text;
	highlights = _highlights;
	
	textbox_recalculate();
}

return textbox;