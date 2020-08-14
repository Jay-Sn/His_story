// calculate number of rows
var text = argument0;
var max_cols = argument1;

var strlen = string_length(text);
var cols = 0;
var rows = 1;

var recently_wrapped = false;

for(i=0;i<strlen;i++) {
	char = string_copy(text, i, 1);
	switch(char) {
		case "\n":
			if(!recently_wrapped) {
				rows += 1;
				cols = 0;
			} else recently_wrapped = false;
			break;
		case " ":
			if(!recently_wrapped) {
				cols += 1;
			} else recently_wrapped = false;
			break;
		default:
			cols += 1;
			recently_wrapped = false;
			break;
	}
	if(cols >= max_cols) {
		rows += 1;
		cols = 0;
		recently_wrapped = true;
	}
}

return rows;