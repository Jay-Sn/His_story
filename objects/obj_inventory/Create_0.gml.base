/// @description Insert description here
// You can write your code in this editor
depth = -1;
scale = 1;
show_inventory = false;

inv_slots = 3;
inv_slots_width = 3;
inv_slots_height = 1;

selected_slot = 0;
pickup_slot = -1; // will change from -1 to the item number
// mouse pos on slot
m_slotx = 0;
m_sloty = 0;

spr_inv_UI = spr_inventory_UI;
spr_inv_items = spr_inventory_items;

roomHeight = room_height;
roomWidth = room_width;

cell_size = 157;

spr_inv_items_columns = sprite_get_width(spr_inv_items)/cell_size;
//spr_inv_items_rows = sprite_get_width(spr_inv_items)/cell_size;

inv_x = roomWidth/50;
inv_y = roomHeight/10 * 7;

slots_x = inv_x + (36*scale);
slots_y = inv_y + (23*scale);

x_buffer = 31;
y_buffer = 16;

inv_UI_width = 979;
inv_UI_height = 201;


//-----------Inventory
//0 = ITEM

ds_inventory = ds_grid_create(1,inv_slots);

//Items
enum item{
	none		= 0,
	pendant		= 1,
	can			= 2,
	canOpener	= 3,
	openedCan	= 4,
	height		= 5,
}

var yy = 0; repeat(inv_slots){
	ds_inventory[# 0,yy] = yy + 1;
	show_debug_message(ds_inventory[# 0,yy]);
	yy += 1;
}