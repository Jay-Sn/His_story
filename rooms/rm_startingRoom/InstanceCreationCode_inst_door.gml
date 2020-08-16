var interaction1 = new_interaction_w_scr(spr_chat_mc, 0, "The door won't open", checkDoorOpen, noone);
var interaction2 = new_interaction(spr_chat_mc, 2, "Mom said the power was directed to the lights");
var interaction3 = new_interaction(spr_chat_mc, 0, "I'm going to have to find a way to power the door");
var interaction4 = new_interaction(spr_chat_mc, 0, "Well, guess it's time to leave this place... for now.");

interaction1.next_interaction = interaction2;
interaction1.prereq_fail_interaction = interaction4;
interaction2.next_interaction = interaction3;


interaction = interaction1;
interaction_aft_reset = interaction1;