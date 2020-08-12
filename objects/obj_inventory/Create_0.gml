 /// @description Insert description here
// You can write your code in this editor
items = [obj_itemA,obj_itemB];
itemCount = 0;
display = true
canCombine = false;

inventoryWidth = sprite_get_width(spr_inventory);
inventoryHeight = sprite_get_height(spr_inventory);

scale = 3
offset_x = (inventoryWidth * scale) / 10 *2
pos_x = x + ((inventoryWidth * scale) / 10)
pos_y = y + (inventoryHeight * scale) /2;