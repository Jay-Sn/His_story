var i1 = new_interaction(spr_chat_mc,0,"Oh... Mom's Pendant...");
var i2 = new_interaction(spr_chat_mc,0,"I should take it with me");
var i3 = new_interaction_ext(spr_pendant,0,"INITIALIZING...CODENAME[MOM]",0.1,2,false);
var i4 = new_interaction(spr_chat_mc,0,"Uwaaaaaa");
//var i5 = new_interaction(spr_chat_mc,0,"...Mom?");
var i5 = new_interaction_w_scr(spr_chat_mc,0,"...Mom?",noone,givePendant);
var i6 = new_interaction_ext(spr_pendant,0,"BLACKOUT DETECTED... PRESS O PLAYER",0.2,2,false);
var i7 = new_interaction_ext(spr_pendant,0,"Pendant Get!",0.2,2,false);

i1.next_interaction = i2;
i2.next_interaction = i3;
i3.next_interaction = i4;
i4.next_interaction = i5;
i5.next_interaction = i6;
i6.next_interaction = i7;

interaction = i1;
interaction_aft_reset = i6;