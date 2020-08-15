var interaction1 = new_interaction_ext(spr_chat_mc, 0, "WHAT THE FUCK????", 0.1, 10, true);
interaction2 = new_interaction_w_scr(spr_chat_mc, 0, "HOL UP-", halfpasshalffail, noone);
var interaction4 = new_interaction_w_scr(spr_chat_mc, 0, "THANKS MY DUDE", noone , examplescript);
var interaction6 = new_interaction(spr_chat_mc, 0, "BRUH WTF MAN");
var interaction7 = new_interaction(spr_chat_mc, 0, "NO BURRITO?!");
interaction8 = new_interaction(spr_chat_mc, 0, "BUT WHY?! AAAAAAAAAAAAAAAAAAAAAAAAAAAAA");

var interaction5 = new_choice();
interaction5.choices[0] = "Help him";
interaction5.choices[1] = "Don't help him at ALL! Like WHAT THE FUCK????WHAT THE FUCK????WHAT THE FUCK????WHAT THE FUCK????";
interaction5.next_interactions[0] = interaction4;
interaction5.next_interactions[1] = interaction6;

var interaction3 = new_choice();
interaction3.choices[0] = "Help him";
interaction3.choices[1] = "Don't help him";
interaction3.next_interactions[0] = interaction4;
interaction3.next_interactions[1] = interaction5;

interaction1.next_interaction = interaction2;
interaction2.next_interaction = interaction3;
interaction2.prereq_fail_interaction = interaction7;

interaction7.next_interaction = interaction8;

interaction = interaction1;
interaction_aft_reset = interaction2;