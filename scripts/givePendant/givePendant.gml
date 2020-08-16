if(!ds_grid_value_exists(obj_mainCharacter.inventory.ds_inventory, 0, 0, 0, 5, "pendant")) {
	addItem("pendant")
	instance_destroy(obj_star);
	dark = true;
	Is_on = true;
}