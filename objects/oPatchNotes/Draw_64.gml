/// @desc
/// @desc DRAW EVENT
if (bugChainOn) {exit;}
draw_set_color(c_black);
draw_set_alpha(0.8);
draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, false);
draw_set_alpha(1);
draw_set_color(c_white);
draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, true);


var padding_left = 30;
var padding_top = 40;

var yy = box_y - scroll_offset + padding_top; // Start with top padding
for (var i = 0; i < ds_list_size(patch_notes_lines); i++) {
    var line = ds_list_find_value(patch_notes_lines, i);
    if (yy + line_height > box_y + padding_top && yy < box_y + box_height - padding_top) {
		scribble(string(textscale)+string(line)).draw(box_x+padding_left,yy);
    }
    yy += line_height;
}

draw_sprite_ext(sArrow,4,report_x,report_y,3,3,0,c_white,1);