// calculate number of rows
var text = argument0;
var max_cols = argument1;

var strlen = string_length(text);
var cols = 0;
var rows = 0;

for(i=0;i<strlen;i++) {
	char = string_copy(text, i, 1);
	switch(char) {
		case "\n":
			rows += 1;
			break;
		default:
			cols += 1;
			break;
	}
	if(cols >= max_cols) {
		rows += 1;
		cols = 0;
	}
}

return rows;