var interaction1 = new_interaction_w_scr(spr_chat_mc, 0, "I should probably check the forest first",checkForest,noone);
var i2 = new_interaction(spr_pendant,0,"OBJECTIVE: CHECK FOREST")

interaction1.next_interaction = i2;
interaction1.prereq_fail_interaction = i2; 

interaction = interaction1;
interaction_aft_reset = i2;