 /// @description Insert description here
// You can write your code in this editor
items = [obj_itemA,obj_itemB];
itemCount = 0;

inventoryWidth = sprite_get_width(spr_inventory);
inventoryHeight = sprite_get_height(spr_inventory);

scale = 3
offset_x = (inventoryWidth * scale) / 10 *2
pos_x = x + ((inventoryWidth * scale) / 10)
pos_y = y + (inventoryHeight * scale) /2;

//boolean
displaying = true //Used to stop the last item from displaying continuously
displayInventory = true; //Used to stop Inventory from displaying continuously
closeInventory = false;