
var text = argument0;
var maxCol = argument1;

var strlen = string_length(text);

var cols = 0;
var rows = 1;

for(i=0;i<strlen;i++) {
    char = string_copy(text, i, 1);
    if(char == "\\" and i != strlen-1) {
        // Handle special characters
        nextchar = string_copy(text, i+1, 1);
        switch(nextchar) {
            case "n":
                rows += 1;
                i += 1;
                break;
        }
    } else {
        cols += 1;
        if(cols> maxCol){ 
			rows += 1;
			cols = 0;
		}
    }
}

return rows;