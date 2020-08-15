var interaction1 = new_interaction_ext(spr_chat_mc, 0, "WHAT THE FUCK????", 0.1, 10, true);
var interaction2 = new_interaction(spr_chat_mc, 0, "HOL UP-");
var interaction4 = new_interaction(spr_chat_mc, 0, "THANKS MY DUDE.");
var interaction6 = new_interaction(spr_chat_mc, 0, "BRUH WTF MAN");

var interaction5 = new_choice();
interaction5.choices[0] = "Help him";
interaction5.choices[1] = "Don't help him at ALL!";
interaction5.next_interactions[0] = interaction4;
interaction5.next_interactions[1] = interaction5;

var interaction3 = new_choice();
interaction3.choices[0] = "Help him";
interaction3.choices[1] = "Don't help him";
interaction3.next_interactions[0] = interaction4;
interaction3.next_interactions[1] = interaction5;

interaction1.next_interaction = interaction2;
interaction2.next_interaction = interaction3;

interaction = interaction1;
interaction_aft_reset = interaction2;