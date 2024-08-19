/// @desc STEP EVENT
var text_height = ds_list_size(patch_notes_lines) * line_height;

if mouse_check_button_pressed(mb_left)
{
	startY=mouse_y;	
}

if mouse_check_button(mb_left)
{
	var move =  0.1*(startY-mouse_y);
	move=clamp(move,-25,25);
	scroll_offset+=move;
}

if mouse_check_button_released(mb_left)
{
startY=0;
}

scroll_offset=clamp(scroll_offset,0,text_height - box_height);

