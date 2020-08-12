///startingDialog(List myText, List character,List animation)

myText = argument0;
character = argument1;
animation = argument2;

if(place_meeting(x,y,obj_mainCharacter)){
	if(myTextBox == noone and keyboard_check(ord("X")) and is_enabled){
		
		myTextBox = instance_create_depth(70,576,-1000000000, obj_textbox);
		myTextBox.characterAnimation = animation;
		myTextBox.text = myText;
		myTextBox.character = character;
		myTextBox.creator = self;
	}
}
else{
	instance_destroy(myTextBox);
	myTextBox = noone;
}