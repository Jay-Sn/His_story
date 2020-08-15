var interaction1 = new_interaction(spr_chat_mc, 0, "All my picture books");
var interaction2 = new_interaction(spr_chat_mc, 2, "...Not that I read any of them now");
var interaction3 = new_interaction(spr_chat_mc, 0, "...");
var interaction4 = new_interaction(spr_chat_mc, 2, "Mom used to read them to me...");

interaction1.next_interaction = interaction2;
interaction2.next_interaction = interaction3;
interaction3.next_interaction = interaction4; 

interaction = interaction1;
interaction_aft_reset = interaction1;