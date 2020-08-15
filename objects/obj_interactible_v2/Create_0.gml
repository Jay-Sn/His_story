bound_star = instance_create_depth(x, y, depth-1, obj_star);
bound_textbox = noone;

if(!is_enabled or !has_item) {
	with(bound_star) visible = false;
}