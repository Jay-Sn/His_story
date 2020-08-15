var interaction1 = new_interaction(spr_chat_mc, 0, "Just a stack of books");
var interaction2 = new_interaction(spr_chat_mc, 0, "Maybe I should move it...");
var interaction3 = new_interaction(spr_chat_mc, 3 , "...");
var interaction4 = new_interaction(spr_chat_mc, 2, "It won't budge");

interaction1.next_interaction = interaction2;
interaction2.next_interaction = interaction3;
interaction3.next_interaction = interaction4;

interaction = interaction1;
interaction_aft_reset = interaction1;