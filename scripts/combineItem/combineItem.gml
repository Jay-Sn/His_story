var item_a = string(argument0);
var item_b = string(argument1);

var item = undefined;

if(ds_map_exists(itemCombinationMap, item_a+"+"+item_b))			item = ds_map_find_value(itemCombinationMap, item_a+"+"+item_b);
else if(ds_map_exists(itemCombinationMap, item_b+"+"+item_a))		item = ds_map_find_value(itemCombinationMap, item_b+"+"+item_a);

return item;