var i1 = new_interaction(spr_chat_mc, 1, "This was also done by not a friend but by a FIVER guy called diegorago138");
var i2 = new_interaction(spr_chat_mc, 1, "Cool guy.");
var i3 = new_interaction_w_scr(spr_chat_mc, 1, "...",noone,endGame);
interaction = i1;
i1.next_interaction = i2;
i2.next_interaction = i3;