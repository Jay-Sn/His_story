if(!is_enabled or !can_continue) exit;

if(is_choosing) {
	if (keyboard_check_pressed(vk_down)) {
		curr_choice = min(n_choices-1, curr_choice+1);
		
		bound_textbox.highlights = array_create(0);
		for(var i=row_start_for_choice[curr_choice];i<row_end_for_choice[curr_choice];i++) bound_textbox.highlights[i] = c_yellow;
		var i=0;
		
	} else if (keyboard_check_pressed(vk_up)) {
		curr_choice = max(0, curr_choice-1);
		
		bound_textbox.highlights = array_create(0);
		for(var i=row_start_for_choice[curr_choice];i<row_end_for_choice[curr_choice];i++) bound_textbox.highlights[i] = c_yellow;
		
	} else if (keyboard_check_pressed(ord("X"))) {
		interaction = interaction.next_interactions[curr_choice];
		
		if(interaction != noone) {
			var objType = object_get_name(interaction.object_index);
			if(objType == "obj_interaction") {
				interaction_aft_reset = interaction;
			}
		}
		else {
			interaction = interaction_aft_reset;
		}
		is_choosing = false;
		
		load_next_interaction(interaction);
	}
}
else if(keyboard_check_pressed(ord("X"))) {
	if(!place_meeting(x, y, obj_mainCharacter)) exit;
	
	obj_mainCharacter.SpeedLimit = 0;
	load_next_interaction(interaction);
}