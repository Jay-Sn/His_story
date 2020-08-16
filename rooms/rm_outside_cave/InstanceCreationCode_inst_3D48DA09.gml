if(openedCave){
	var i1 = new_interaction_w_scr(spr_chat_mc, 1, "Time to enter the cave!",noone,nextRoom);
	interaction = i1;

} else{ 
	var i1 = new_interaction(spr_chat_mc, 2, "The vines are blocking the cave.");
	var i2 = new_interaction_w_scr(spr_chat_mc, 4, "Are those thorns... blue?",noone,caveCheck);
	interaction = i1;
	i1.next_interaction = i2
}

