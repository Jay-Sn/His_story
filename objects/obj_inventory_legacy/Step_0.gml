/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("I"))){ show_inventory = !show_inventory; }

//Get mouse position
if(!show_inventory) exit;
#region Mouse Slot
mousex = device_mouse_x_to_gui(0);
mousey = device_mouse_y_to_gui(0);

var cell_xbuff = (cell_size + x_buffer) * scale;
var cell_ybuff = (cell_size + y_buffer) * scale;

var i_mousex = mousex - slots_x;
var i_mousey = mousey - slots_y;

var nx = i_mousex div cell_xbuff;
var ny = i_mousey div cell_ybuff;

if(nx>=0 and nx< inv_slots_width  and ny >=0 and ny < inv_slots_width){
	
	var sx = i_mousex - (nx*cell_xbuff);
	var sy = i_mousey - (ny*cell_ybuff);
	
	if((sx<cell_size * scale) and (sy < cell_size *scale)){
		m_slotx = nx;
		m_sloty = ny;
	}
}

//Set Selected slot to Mouse Position
selected_slot = min(inv_slots-1 ,m_slotx + (m_sloty * inv_slots_width));
#endregion

//Pickup Item
var  inv_grid = ds_inventory;
var ss_item = inv_grid[# 0, selected_slot];

if(pickup_slot != -1){
	if(mouse_check_button_pressed(mb_left)){
		if(ss_item == item.none){
			inv_grid[# 0,selected_slot] = inv_grid[# 0,pickup_slot];
			
			inv_grid[# 0,pickup_slot] = item.none;
			
			pickup_slot = -1;
			
		} else if((ss_item == item.can and pickup_slot == item.canOpener) or (ss_item == item.canOpener and pickup_slot == item.can)){
			
			inv_grid[# 0,selected_slot] = item.openedCan;
			
			inv_grid[# 0,pickup_slot] = item.none;
			
			pickup_slot = -1;
		} else{
			
			inv_grid[# 0,selected_slot] = inv_grid[# 0,pickup_slot];
			
			inv_grid[# 0,pickup_slot] = ss_item;
			
			pickup_slot = -1;
		}
	}
}
else if(ss_item != item.none){
	if(mouse_check_button_pressed(mb_right)){
		pickup_slot = selected_slot;
	}
}