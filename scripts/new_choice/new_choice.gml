// interactions and choices will be added manually to the object using id

var choice = instance_create_depth(x, y, depth, obj_choice)
with(choice) {
	choices = array_create(0);
	next_interactions = array_create(0);
}
return choice;