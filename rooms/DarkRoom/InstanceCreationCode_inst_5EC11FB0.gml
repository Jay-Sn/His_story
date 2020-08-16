var i1 = new_interaction(spr_chat_mc, 4, "Its so dark...")
var i2 = new_interaction(spr_chat_mc, 4, "What happened to the lights here?")
var i3 = new_interaction(spr_pendant, 0, "THIS IS THE END OF THE PREVIEW. THANKS FOR PLAYING THE GAME.")
var i4 = new_interaction_w_scr(spr_pendant, 0, "THIS IS THE END OF THE PREVIEW. THANKS FOR PLAYING THE GAME.",noone,endGame)
audio_stop_all();
interaction = i1;
i1.next_interaction = i2
i2.next_interaction = i3
i3.next_interaction = i4