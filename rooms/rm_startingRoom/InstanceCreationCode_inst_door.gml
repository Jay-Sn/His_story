var interaction1 = new_interaction(spr_chat_mc, 0, "The door won't open");
var interaction2 = new_interaction(spr_chat_mc, 2, "Mom said the power was directed to the lights");
var interaction3 = new_interaction(spr_chat_mc, 0, "I'm going to have to find a way to power the door");

interaction1.next_interaction = interaction2;
interaction2.next_interaction = interaction3;


interaction = interaction1;
interaction_aft_reset = interaction1;