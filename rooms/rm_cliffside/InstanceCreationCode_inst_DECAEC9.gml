var interaction1 = new_interaction(spr_chat_oldman, 0, "A Child?");
var interaction2 = new_interaction(spr_chat_oldman, 0, "What are you doing this far from civilization?.");
var interaction3 = new_interaction(spr_chat_oldman, 2 , "...Or at least whats left of it");
var interaction4 = new_interaction(spr_chat_oldman, 2, "You should head nack the way you came, it's dangerous up ahead");
var interaction5 = new_interaction(spr_chat_mc, 2 , "I can't...");
var interaction6 = new_interaction(spr_chat_mc, 2 , "And the cave in the forest is blocked by vines...");
var interaction7 = new_interaction(spr_chat_oldman, 2, "I see... Well my name is Linus");
var interaction8 = new_interaction(spr_chat_oldman, 2, "What's yours?");

interaction1.next_interaction = interaction2;
interaction2.next_interaction = interaction3;
interaction3.next_interaction = interaction4;
interaction4.next_interaction = interaction5;
interaction5.next_interaction = interaction6;
interaction6.next_interaction = interaction7;
interaction7.next_interaction = interaction8;

interaction = interaction1;
interaction_aft_reset = interaction1;