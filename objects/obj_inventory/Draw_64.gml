if(!show_inventory) exit;

// draw inventory container

draw_rectangle_color(invbox_topleft_x, invbox_topleft_y, invbox_bottomright_x, invbox_bottomright_y, c_black, c_black, c_black, c_black, true);
draw_rectangle_color(invbox_topleft_x, invbox_topleft_y, invbox_bottomright_x, invbox_bottomright_y, c_white, c_white, c_white, c_white, false);
draw_rectangle_color(invbox_topleft_x+4, invbox_topleft_y+4, invbox_bottomright_x-4, invbox_bottomright_y-4, c_black, c_black, c_black, c_black, true);
draw_rectangle_color(invbox_topleft_x+4, invbox_topleft_y+4, invbox_bottomright_x-4, invbox_bottomright_y-4, c_gray, c_gray, c_gray, c_gray, false);

// draw cells
var cell_x1 = outer_margin + inner_margin + leftover_margin;
var cell_y1 = invbox_topleft_y + inner_margin;
var cell_x2 = cell_x1 + cell_size;
var cell_y2 = cell_y1 + cell_size;
var usable_slots = inv_slots;

for(r=0;r<max_inv_rows;r++) {
	for(c=0;c<max_inv_columns;c++) {
		if(usable_slots <= 0) {
			// disable the extra spaces
			draw_rectangle_color(cell_x1, cell_y1, cell_x2, cell_y2, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false);
			draw_rectangle_color(cell_x1, cell_y1, cell_x2, cell_y2, c_black, c_black, c_black, c_black, true);
		} else {
			if(held_item != "" and r == held_origin_r and c == held_origin_c) {
				draw_rectangle_color(cell_x1-2, cell_y1-2, cell_x2+2, cell_y2+2, c_yellow, c_yellow, c_yellow, c_yellow, false);
			}
			
			draw_rectangle_color(cell_x1, cell_y1, cell_x2, cell_y2, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
			draw_rectangle_color(cell_x1, cell_y1, cell_x2, cell_y2, c_black, c_black, c_black, c_black, true);
			
			// draw item
			var itm = ds_grid_get(ds_inventory, r, c);
			var itmSpr = getItemSpr(itm);
			
			if(!is_undefined(itmSpr)) {
				var itmSpr_x = floor((cell_x1 + cell_x2)/2);
				var itmSpr_y = floor((cell_y1 + cell_y2)/2);
				draw_sprite(itmSpr, 0, itmSpr_x, itmSpr_y);
			}
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