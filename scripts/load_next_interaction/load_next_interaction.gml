if(instance_exists(bound_textbox)) instance_destroy(bound_textbox);
if(interaction != noone) {
	var objType = object_get_name(interaction.object_index);
	if(objType == "obj_interaction") {
		
		// prerequisite check
		if(!is_undefined(prerequisite_scr)) {
			
		}
		
		bound_textbox = new_textbox_ext(interaction.chara_sprite, interaction.subimg, interaction.text, interaction.draw_text_speed, interaction.char_spacing, interaction.sansmode);
		interaction = interaction.next_interaction;
		
		can_continue = false;
		alarm_set(0, continue_delay);
	} else if(objType == "obj_choice") {
		bound_textbox = new_textbox(undefined, 0, "");
			
		// Choice variables init
		fullText = "";
		row_start_for_choice = array_create(0);
		row_end_for_choice = array_create(0);
		curr_choice = 0;
		n_choices = array_length_1d(interaction.choices);
			
		var curr_row = 0;
		for(var i=0;i<n_choices;i+=1) {
			if(i==n_choices-1) fullText += interaction.choices[i]
			else fullText += (interaction.choices[i] + "\n");
				
			var n_rows = textbox_calculateRows(interaction.choices[i], bound_textbox.max_cols);
			row_start_for_choice[i] = curr_row;
			row_end_for_choice[i] = curr_row+n_rows;
				
			curr_row += n_rows;
		}
			
		instance_destroy(bound_textbox);
		bound_textbox = new_textbox(undefined, 0, fullText);
		for(var i=row_start_for_choice[0];i<row_end_for_choice[0];i++) bound_textbox.highlights[i] = c_yellow;
		is_choosing = true;
	}
} else {
	obj_mainCharacter.SpeedLimit = 7;
	interaction = interaction_aft_reset;
}