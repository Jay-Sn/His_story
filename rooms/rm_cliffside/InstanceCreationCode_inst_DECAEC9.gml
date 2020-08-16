if(!openedCan and !canopener){
	//Default Conversation
	var interaction1 = new_interaction(spr_chat_oldman, 0, "A Child? and that Pendant... Nevermind...");
	var interaction2 = new_interaction(spr_chat_oldman, 0, "What are you doing this far from civilization?.");
	var interaction3 = new_interaction(spr_chat_oldman, 2 , "...Or at least what's left of it");
	var interaction4 = new_interaction(spr_chat_oldman, 2, "You should head back the way you came, it's dangerous up ahead!");
	var interaction5 = new_interaction(spr_chat_mc, 2 , "I can't...");
	var interaction6 = new_interaction(spr_chat_mc, 2 , "And the cave in the forest is blocked by vines...");
	var interaction7 = new_interaction(spr_chat_oldman, 1, "I see... Well my name is Linus!");
	var interaction8 = new_interaction(spr_chat_oldman, 1, "What's yours?");

	//After Question (ASK FOR NAME)
	var interaction10 = new_interaction(spr_chat_oldman, 1, "Good Name!");
	var interaction11 = new_interaction(spr_chat_oldman, 2, "That is understandable...");

	//TellName Convo
	var interaction12 = new_interaction(spr_chat_oldman, 1, "So about that cave up ahead...");
	var interaction13 = new_interaction(spr_chat_oldman, 2, "I could help you but would listen to a little rambling from this old man?");
	var interaction14 = new_interaction(spr_chat_oldman, 1, "...and also some food...");

	//After agreeing
	var interaction16 = new_interaction(spr_chat_oldman, 2, "Well...");

	//After disagreeing
	var interaction17 = new_interaction(spr_chat_mc, 0, "...");
	var interaction18 = new_interaction(spr_chat_mc, 2, "Sorry Linus I don't thin-");
	var interaction19 = new_interaction(spr_chat_oldman, 1, "Alright! Glad you'd listen!");
	var interaction20 = new_interaction(spr_chat_mc, 0, "Oh boy...");

	//Old Mans short story
	var interaction21 = new_interaction(spr_chat_oldman, 2, "There... used to be a bridge around here that people frequent");
	var interaction22 = new_interaction(spr_chat_oldman, 2, "But the war came and a certain family was too involved in it...");
	var interaction23 = new_interaction(spr_chat_oldman, 2, "and the bridge was destroyed...");
	var interaction24 = new_interaction(spr_chat_oldman, 0, "By who? We'll never know...");
	var interaction25 = new_interaction(spr_chat_oldman, 2, "And thats also why I'm stuck here.");
	var interaction26 = new_interaction(spr_chat_oldman, 1, "...And so about the food...");
	var interaction27 = new_interaction(spr_chat_oldman, 2, "...");
	var interaction28 = new_interaction(spr_chat_mc, 0, "...");
	var interaction29 = new_interaction_ext(spr_chat_oldman, 2, "...",0.1,0,false);
	var interaction30 = new_interaction_ext(spr_chat_mc, 1, "Can I say no-",0.1,0,false);
	var interaction31 = new_interaction_w_scr(spr_chat_oldman, 2, "Here you go! A can opener, I just thought you'd need it",noone,giveOpener);
	var interaction32 = new_interaction(spr_chat_mc, 0, "Alright.");
	var interaction33 = new_interaction(spr_chat_mc, 0, "Now where can I find food...?");
	//Questions
	var interaction9 = new_choice();
	interaction9.choices[0] = "Tell Him Your Name!";
	interaction9.choices[1] = "Don't Trust Strangers...";
	interaction9.next_interactions[0] = interaction10;
	interaction9.next_interactions[1] = interaction11;

	var interaction15 = new_choice();
	interaction15.choices[0] = "Sure!";
	interaction15.choices[1] = "Don't waste your time! We got places to be, things to do-";
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
	interaction16.next_interaction = interaction21;

	//Q2 Disagree
	interaction17.next_interaction = interaction18;
	interaction18.next_interaction = interaction19;
	interaction19.next_interaction = interaction20;

	//Short Story
	interaction20.next_interaction = interaction21;
	interaction21.next_interaction = interaction22;
	interaction22.next_interaction = interaction23;
	interaction23.next_interaction = interaction24;
	interaction24.next_interaction = interaction25;
	interaction25.next_interaction = interaction26;
	interaction26.next_interaction = interaction27;
	interaction27.next_interaction = interaction28;
	interaction28.next_interaction = interaction29;
	interaction29.next_interaction = interaction30;
	interaction30.next_interaction = interaction31;
	interaction31.next_interaction = interaction32;
	interaction32.next_interaction = interaction33;
	interaction_aft_reset = interaction33;
	exit
} else if (openedCan or ds_grid_value_exists(obj_mainCharacter.inventory.ds_inventory, 0, 0, 0, 5, "can") and canopener) {
	var interaction1 = new_interaction_w_scr(spr_chat_oldman, 1, "Oh I see you got the food", checkOpenedCan, removeOpenedCan);
	var interaction2 = new_interaction(spr_chat_oldman, 1, "While you were getting the food I went ahead and cleared the way");
	var interaction3 = new_interaction(spr_chat_oldman, 2, "Now we are even!");
	var interaction4 = new_interaction(spr_chat_mc, 0, "I've got a can and a can opener... now i just need to combine them...");
	
	openedCave = true;
	interaction = interaction1;
	interaction1.next_interaction = interaction2;
	interaction1.prereq_fail_interaction = interaction4;
	interaction2.next_interaction = interaction3;
	interaction_aft_reset = interaction3;
} else {
	var interaction1 = new_interaction(spr_chat_mc, 0, "Now where can I find food...?");
	
	interaction = interaction1;
	interaction_aft_reset = interaction1;
}