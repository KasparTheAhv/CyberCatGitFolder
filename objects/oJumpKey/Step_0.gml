/// @description Insert description here
// You can write your code in this editor
if (joonista==false) {exit;}

if device_mouse_check_button(my_touch,mb_any)
{
	
	if (global.autoJump==1)
	{
		image_blend=c_yellow;	
		with(oPlayer)
		{
			if (canjump>0) {if (landed){canjump=0;jumping=true;alarm[1]=25; {vsp=-5.8*jumpamp;}}}
		}
	} else {
		image_blend=c_yellow;
			with(oPlayer)
			{
			if (canjump>0) && !(aJumpBlock) {if (landed){aJumpBlock=true;canjump=0;jumping=true;alarm[1]=25; {vsp=-5.8*jumpamp;}}}
			}
	}
	
	
} else {
	image_blend=c_white;
	my_touch=-1;
	with(oPlayer) {aJumpBlock=false;}
}

