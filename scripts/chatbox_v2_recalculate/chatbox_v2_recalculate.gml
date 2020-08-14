// calculate content height
var rows = calculateRows(text, max_cols);
var content_height = (rows-1) * (char_height + line_spacing) + char_height;

// Add in content heights
box_topleft_y -= content_height;
textbox_topleft_y -= content_height;
character_y = textbox_topleft_y + character_height * 1.5;