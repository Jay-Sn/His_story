var i1 = new_interaction(spr_chat_mc,0,"Ah the fridge!");
var i2 = new_interaction_w_scr(spr_chat_mc,0,"I should get some food",noone,giveCan);
var i3 = new_interaction_ext(spr_pendant,0,"Can get!",0.2,2,false);

i1.next_interaction = i2;
i2.next_interaction = i3;

interaction = i1;
interaction_aft_reset = i3;