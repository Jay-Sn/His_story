// calculate content height
var rows = max(min_rows, chatbox_calculateRows(text, max_cols));
var content_height = (rows-1) * (char_height + line_spacing) + char_height;

// Add in content heights
box_topleft_y = room_height - (outer_y_margin + inner_y_margin) - content_height;
textbox_topleft_y = box_topleft_y + inner_y_margin;

if(rows > min_rows) {
	character_y -= abs(content_height-character_height)/2;
}