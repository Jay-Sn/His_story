if(checkForest()) {
	var interaction1 = new_interaction(spr_chat_mc, 0, "I should probably check the forest for a way out first");
	var i2 = new_interaction(spr_pendant,0,"OBJECTIVE: CHECK FOREST")

	interaction1.next_interaction = i2;

	interaction = interaction1;
	interaction_aft_reset = i2;
}