/// @description Insert description here
// You can write your code in this editor
if (isAndroid)
{
		if device_mouse_check_button(my_touch,mb_any)
		{
			if (pressed==false)
			{
			pressed=true;
			image_blend=c_yellow;
			if instance_exists(oCannonFlak) {oCannonFlak.alarm[0]=1;}
			if instance_exists(oPlayer){if !instance_exists(oLightning) {oPlayer.alarm[10]=1;}}
			}
		} else {
			if (pressed==true)
			{
			pressed=false;
			if instance_exists(oPlayerAttack){if !instance_exists(oLightning) {oPlayerAttack.alarm[10]=1;}}
			image_blend=c_white;
			my_touch=-1;
			}
		}
		
		
		if instance_exists(oPlayerAttack)
		{
		image_blend=$eea944;
		} else {
			if instance_exists(oPlayer) {
		if (oPlayer.canatk) {image_blend=c_white;} else  {image_blend=c_yellow;}
		} else if instance_exists(oPlayerFall) {image_blend=c_yellow;}
		}
		// Is NOT ANDROID
} else {
		if device_mouse_check_button(0,mb_right)
		{
			if (pressed==false)
			{
			pressed=true;
			image_blend=c_yellow;
			if instance_exists(oCannonFlak) {oCannonFlak.alarm[0]=1;}
			if instance_exists(oPlayer){if !instance_exists(oLightning) {oPlayer.alarm[10]=1;}}
			}
		} else {
			if (pressed==true)
			{
			pressed=false;
			if instance_exists(oPlayerAttack){if !instance_exists(oLightning) {oPlayerAttack.alarm[10]=1;}}
			image_blend=c_white;
			my_touch=-1;
			}
		}
		
		
		if instance_exists(oPlayerAttack)
		{
		image_blend=$eea944;
		} else {
			if instance_exists(oPlayer) {
		if (oPlayer.canatk) {image_blend=c_white;} else  {image_blend=c_yellow;}
		} else if instance_exists(oPlayerFall) {image_blend=c_yellow;}
		}
}