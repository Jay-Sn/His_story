var item = argument0;

for(i=0;i<6;i++) {
	if(ds_grid_get(obj_mainCharacter.inventory.ds_inventory, 0, i) == 0) {
		ds_grid_set(obj_mainCharacter.inventory.ds_inventory, 0, i, item);
		exit;
	}
}