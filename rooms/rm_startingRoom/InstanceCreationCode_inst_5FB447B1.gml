var i1 = new_interaction(spr_chat_mc,1,"Ah the fridge!");
var i2 = new_interaction_w_scr(spr_chat_mc,1,"I should get some food",checkIfCanExist,giveCan);
var i3 = new_interaction_ext(spr_pendant,0,"Can get!",0.2,2,false);
var i4 = new_interaction(spr_chat_mc,0,"I think there is still some kind of food in there...");

i1.next_interaction = i2;
i2.next_interaction = i3;
i2.prereq_fail_interaction = i4;

interaction = i1;
interaction_aft_reset = i3;