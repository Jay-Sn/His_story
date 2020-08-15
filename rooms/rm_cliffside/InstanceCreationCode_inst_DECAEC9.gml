//Default Conversation
var interaction1 = new_interaction(spr_chat_oldman, 0, "A Child?");
var interaction2 = new_interaction(spr_chat_oldman, 0, "What are you doing this far from civilization?.");
var interaction3 = new_interaction(spr_chat_oldman, 2 , "...Or at least what's left of it");
var interaction4 = new_interaction(spr_chat_oldman, 2, "You should head back the way you came, it's dangerous up ahead");
var interaction5 = new_interaction(spr_chat_mc, 2 , "I can't...");
var interaction6 = new_interaction(spr_chat_mc, 2 , "And the cave in the forest is blocked by vines...");
var interaction7 = new_interaction(spr_chat_oldman, 2, "I see... Well my name is Linus");
var interaction8 = new_interaction(spr_chat_oldman, 2, "What's yours?");

//After Question (ASK FOR NAME)
var interaction10 = new_interaction(spr_chat_oldman, 2, "Good Name!");
var interaction11 = new_interaction(spr_chat_oldman, 2, "That is understandable...");

//TellName Convo
var interaction12 = new_interaction(spr_chat_oldman, 2, "So about that cave up ahead...");
var interaction13 = new_interaction(spr_chat_oldman, 2, "I could help you but would listen to a little rambling from this old man");
var interaction14 = new_interaction(spr_chat_oldman, 2, "...and also some food...");

//After agreeing
var interaction16 = new_interaction(spr_chat_oldman, 2, "Well...");
//After disagreeing
var interaction17 = new_interaction(spr_chat_mc, 0, "...");
var interaction18 = new_interaction(spr_chat_mc, 2, "Sorry Linus I don't thin-");
var interaction19 = new_interaction(spr_chat_oldman, 1, "Alright! Glad you'd listen!");
var interaction20 = new_interaction(spr_chat_mc, 0, "Oh boy...");

//Old Mans short story
var interaction21 = new_interaction(spr_chat_oldman, 2, "There used to be a bridge...");
//ToBe Continued
//Questions
var interaction9 = new_choice();
interaction9.choices[0] = "Tell Him Your Name!";
interaction9.choices[1] = "Don't Trust Strangers...";
interaction9.next_interactions[0] = interaction10;
interaction9.next_interactions[1] = interaction11;

var interaction15 = new_choice();
interaction15.choices[0] = "Sure!";
interaction15.choices[1] = "Don't waste your time! We got places to be, things to d-";
interaction15.next_interactions[0] = interaction16;
interaction15.next_interactions[1] = interaction17;

//Sequence of interactions
//Default
interaction = interaction1;
interaction1.next_interaction = interaction2;
interaction2.next_interaction = interaction3;
interaction3.next_interaction = interaction4;
interaction4.next_interaction = interaction5;
interaction5.next_interaction = interaction6;
interaction6.next_interaction = interaction7;
interaction7.next_interaction = interaction8;
interaction8.next_interaction = interaction9;
//Q1
interaction10.next_interaction = interaction12;
interaction11.next_interaction = interaction12;

interaction12.next_interaction = interaction13;
interaction13.next_interaction = interaction14;
interaction14.next_interaction = interaction15;
//Q2 Agree

//Q2 Disagree
interaction17.next_interaction = interaction18;
interaction18.next_interaction = interaction19;
interaction19.next_interaction = interaction20;

interaction_aft_reset = interaction2;