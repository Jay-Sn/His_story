/// @description Insert description here
// You can write your code in this edit
startX = room_width/2;
startY = room_height - bufferY - sprite_get_height(spr_puzzle)/2;

checkY = room_height - bufferY - sprite_get_height(spr_puzzle);
checkX = startX - sprite_get_width(spr_puzzle)/2;

end_x = startX +  sprite_get_width(spr_puzzle)/2; 
end_y = room_height - bufferY;

