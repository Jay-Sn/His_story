if(keyboard_check_pressed(ord("Z"))) show_inventory = !show_inventory;

if(!show_inventory) exit;

if(mouse_check_button_pressed(mb_left)){
	var mousex = device_mouse_x_to_gui(0);
	var mousey = device_mouse_y_to_gui(0);

	var cell_x1 = outer_margin + inner_margin + leftover_margin;
	var cell_y1 = invbox_topleft_y + inner_margin;
	var cell_x2 = cell_x1 + cell_size;
	var cell_y2 = cell_y1 + cell_size;
	var usable_slots = inv_slots;

	for(r=0;r<max_inv_rows;r++) {
		for(c=0;c<max_inv_columns;c++) {
			if(mousex > cell_x1 and mousex < cell_x2 and mousey > cell_y1 and mousey < cell_y2) {
				// Pickup
				var target_item = ds_grid_get(ds_inventory, r, c);
				
				if(held_item == "") {
					if(target_item != 0) held_item = target_item;
					else held_item = "";
					held_origin_r = r;
					held_origin_c = c;
				}
				else {
					// Drop
					if(target_item == 0) {
						if(usable_slots > 0) {
							ds_grid_set(ds_inventory, r, c, held_item);
							ds_grid_set(ds_inventory, held_origin_r, held_origin_c, 0);
						}
					}
					else {
						var combined_item = combineItem(held_item, target_item);
						
						// Combine
						if(!is_undefined(combined_item)) {
							ds_grid_set(ds_inventory, r, c, combined_item);
							ds_grid_set(ds_inventory, held_origin_r, held_origin_c, 0);
						}
						// Swap
						else {
							ds_grid_set(ds_inventory, r, c, held_item);
							ds_grid_set(ds_inventory, held_origin_r, held_origin_c, target_item);
						}
					}
					held_item = "";
				}
				break;
			}
		
			usable_slots -= 1;
			cell_x1 += cell_spacing;
			cell_x2 += cell_spacing;
		}
		cell_x1 = outer_margin + inner_margin + leftover_margin;
		cell_x2 = cell_x1 + cell_size;
		cell_y1 += cell_spacing;
		cell_y2 += cell_spacing;
	}
}