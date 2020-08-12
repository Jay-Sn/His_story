///closeInventory(listOfItems, indexOfList)

listOfItems = argument0;
index = argument1;

if(index < array_length_1d(listOfItems)){
	instance_destroy(listOfItems[index]);
	
}
else{
	instance_destroy(self);
	closingInventory = false;	
}