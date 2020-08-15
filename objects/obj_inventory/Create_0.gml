initItems();

show_inventory = false;
held_item = "";

//dynamic inventory drawing

inv_slots = 10;
cell_size = 128; //157

outer_margin = 28; //px
inner_margin = 14; //px

invbox_topleft_x = outer_margin;
invbox_topleft_y = room_height - (outer_margin + 2*inner_margin + cell_size);
invbox_bottomright_x = room_width - outer_margin;
invbox_bottomright_y = room_height - outer_margin;

cell_spacing = cell_size + inner_margin;

var invbox_width = invbox_bottomright_x - invbox_topleft_x;
max_inv_columns = floor((invbox_width - inner_margin)/cell_spacing);
var leftover_width = invbox_width - (max_inv_columns * cell_spacing + inner_margin);
leftover_margin = leftover_width/2;
max_inv_rows = ceil(inv_slots/max_inv_columns);

// Account for extra rows required
invbox_topleft_y -= (max_inv_rows-1) * cell_spacing;

// inventory init
ds_inventory = ds_grid_create(max_inv_rows, max_inv_columns);

//ds_grid_add(ds_inventory, 0, 0, "pendant");
//ds_grid_add(ds_inventory, 0, 1, "can");
//ds_grid_add(ds_inventory, 0, 2, "canopener");
