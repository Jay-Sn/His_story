var intr = argument0;

if(instance_exists(bound_textbox)) instance_destroy(bound_textbox);
if(intr != noone) {
	var objType = object_get_name(intr.object_index);
	if(objType == "obj_interaction") {
		
		// prerequisite check
		if(intr.prereq_scr_ind != noone) {
			var result = script_execute(intr.prereq_scr_ind);
			if(!result) {
				var fail_intr = intr.prereq_fail_interaction;
				bound_textbox = new_textbox_ext(fail_intr.chara_sprite, fail_intr.subimg, fail_intr.text, fail_intr.draw_text_speed, fail_intr.char_spacing, fail_intr.sansmode);
				interaction_aft_reset = intr;
				interaction = fail_intr.next_interaction;
				exit;
			}
		}
		
		bound_textbox = new_textbox_ext(intr.chara_sprite, intr.subimg, intr.text, intr.draw_text_speed, intr.char_spacing, intr.sansmode);
		interaction = intr.next_interaction;
		
		can_continue = false;
		alarm_set(0, continue_delay);
		
		if(intr.ontrigger_scr_ind != noone) {
			script_execute(intr.ontrigger_scr_ind);
		}
		
	} else if(objType == "obj_choice") {
		bound_textbox = new_textbox(undefined, 0, "");
			
		// Choice variables init
		fullText = "";
		row_start_for_choice = array_create(0);
		row_end_for_choice = array_create(0);
		curr_choice = 0;
		n_choices = array_length_1d(intr.choices);
			
		var curr_row = 0;
		for(var i=0;i<n_choices;i+=1) {
			if(i==n_choices-1) fullText += intr.choices[i]
			else fullText += (intr.choices[i] + "\n");
				
			var n_rows = textbox_calculateRows(intr.choices[i], bound_textbox.max_cols);
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