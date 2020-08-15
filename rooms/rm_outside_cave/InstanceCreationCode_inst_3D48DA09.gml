if(openedCave){
	var i1 = new_interaction(spr_chat_mc, 0, "Its so dark...")
	var i2 = new_interaction(spr_chat_mc, 0, " This is the end of the preview.Thanks for trying out this game.")
	var i3 = new_interaction_w_scr(spr_chat_mc, 0, "",noone,nextRoom)

	interaction = i1;
	i1.next_interaction = i2
	i2.next_interaction = i3

} else{ 
	var i1 = new_interaction(spr_chat_mc, 0, "The vines are blocking the cave.")
	var i2 = new_interaction(spr_chat_mc, 0, "Are those thorns... blue")
	
	interaction = i1;
	i1.next_interaction = i2
}

