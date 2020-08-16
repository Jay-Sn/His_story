var i1 = new_interaction(spr_chat_mc,2,"Oh... Mom's Pendant...");
var i2 = new_interaction(spr_chat_mc,0,"I should take it with me");
var i3 = new_interaction_ext(spr_pendant,0,"INITIALIZING...CODENAME [ MOM ]",0.3,2,false);
var i4 = new_interaction(spr_chat_mc,4,"Uwaaaaaa!");
var i5 = new_interaction(spr_chat_mc,4,"...Mom?");

//Q1 Agree
var i7 = new_interaction(spr_pendant,0,"More Accurately, whats left of her, An AI of her.");
var i8 = new_interaction(spr_chat_mc,2,"I see... ");
var i9 = new_interaction(spr_chat_mc,2,"So this is why she left this with me when she left that day...");
var i10 = new_interaction(spr_chat_mc,1,"I guess I'll still call you Mom then!");

//Q1 Disagree
var i11 = new_interaction(spr_chat_mc,2,"I see... ");
var i12 = new_interaction(spr_chat_mc,2,"So this is why she left this with me when she left that day...");

//After Q1
var i13 = new_interaction_w_scr(spr_chat_mc,4,"Ahhhhhhh!",noone,givePendant);
var i14 = new_interaction(spr_pendant,0,"BLACKOUT DETECTED... PRESS O PLAYER");
var i15 = new_interaction_ext(spr_pendant,0,"Pendant Get!",0.2,2,false);

var i6 = new_choice();
i6.choices[0] = "Yes it's your Mom speaking.";
i6.choices[1] = "I am not your Mom.";
i6.next_interactions[0] = i7;
i6.next_interactions[1] = i11;

//Sequence
//Default
i1.next_interaction = i2;
i2.next_interaction = i3;
i3.next_interaction = i4;
i4.next_interaction = i5;
i5.next_interaction = i6;

//Q1 Agree
i7.next_interaction = i8;
i8.next_interaction = i9;
i9.next_interaction = i10;
i10.next_interaction = i13;
//Q1 Disagree
i11.next_interaction = i12;
i12.next_interaction = i13;

//After Question
i13.next_interaction = i14;
i14.next_interaction = i15;

interaction = i1;
interaction_aft_reset = i6;