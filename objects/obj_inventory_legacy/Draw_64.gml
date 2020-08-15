/// @description Drawing Inventory
if(!show_inventory) exit;

draw_sprite_part_ext(
spr_inv_UI, 0, cell_size, 0, 
inv_UI_width,inv_UI_height, 
inv_x, inv_y,scale,scale, c_white,1);

//----------Inventory

var ii, ix, iy, xx, yy, sx, sy, iitem,inv_grid;
ii =0; ix = 0; iy = 0;inv_grid = ds_inventory;
repeat(inv_slots){
	//x,y location for slots
	xx = slots_x + ((cell_size + x_buffer) *ix * scale) ;
	yy = slots_y + ((cell_size + y_buffer) *iy * scale);
	
	//Item
	iitem =inv_grid[# 0,ii];
	sx = (iitem mod spr_inv_items_columns) *cell_size;
	sy = (iitem div spr_inv_items_columns) *cell_size;
	
	//Draw Slot and Item
	draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cell_size, cell_size, xx, yy, scale,scale, c_white, 1 );
	
	switch(ii){
		case selected_slot:
			if(iitem > 0) draw_sprite_part_ext(spr_inv_items, 0, sx,sy, cell_size,cell_size,xx, yy, scale,scale, c_white,.3);
			gpu_set_blendmode(bm_add);
			draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cell_size, cell_size, xx, yy, scale,scale, c_white, 1 );
			gpu_set_blendmode(bm_normal);
			
		break;
		
		case pickup_slot:
			if(iitem > 0) draw_sprite_part_ext(spr_inv_items, 0, sx,sy, cell_size,cell_size,xx, yy, scale,scale, c_white,.2);
		
		break;
		
		default:
			if(iitem > 0) draw_sprite_part_ext(spr_inv_items, 0, sx,sy, cell_size,cell_size,xx, yy, scale,scale, c_white,1);
		
		break;
	}
	//Increment
	ii += 1;
	ix = ii mod inv_slots_width;
	iy = ii div inv_slots_width;
}

if(pickup_slot != -1){
	//Item
	iitem =inv_grid[# 0,pickup_slot];
	sx = (iitem mod spr_inv_items_columns) *cell_size;
	sy = (iitem div spr_inv_items_columns) *cell_size;
	draw_sprite_part_ext(spr_inv_items, 0, sx,sy, cell_size,cell_size,mousex, mousey, scale,scale, c_white,.3);
}