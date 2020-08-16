var i1 = new_interaction(spr_chat_mc, 1, "These are the puzzle mechanics. Press O to see it!");
var i2 = new_interaction(spr_chat_mc, 1, "The Brain behind these is non other than the big brain Eugene!");
var i3 = new_interaction(spr_chat_mc, 0, "Since this is basically as complex  as an engine...");
var i4 = new_interaction(spr_chat_mc, 0, "Lets call this...");
var i5 = new_interaction(spr_chat_mc, 1, "engine + eugene = Eu-Gine! - Jason(2020)");
var i6 = new_interaction(spr_chat_mc, 0, "...");

interaction = i1;
i1.next_interaction = i2;
i2.next_interaction = i3;
i3.next_interaction = i4;
i4.next_interaction = i5;
i5.next_interaction = i6;

