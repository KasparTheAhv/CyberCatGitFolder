/// @desc
// rainbo rect
var time = current_time;
 color1 = make_color_hsv((time*0.1 % 255), 255, 255);
 color2 = make_color_hsv((time+500)*0.1 % 255, 255, 255);
 color3 = make_color_hsv((time+1000)*0.1 % 255, 255, 255);
 color4 = make_color_hsv((time+1500)*0.1 % 255, 255, 255);



if !(readytouse) {
	if (TXTalpha>0) {TXTalpha-=0.05;}
} else {
	if (TXTalpha<1) {TXTalpha+=0.04;}
}
TXTalpha=clamp(TXTalpha,0,1);

if (startreward)
{
	

	
	
	
if (tagumineXkordaja<1.7) && (tohibLiikuda) {tagumineXkordaja+=0.005; 
	// joonte arvutus reward boxile
rewX1=rW*tagumineXkordaja;
rewX2=rewX1-570;
rewDrawnX1=clamp(rewX1,rW*0.15,rW*0.85);
rewX2=clamp(rewX2,rW*0.15,rW*0.85);
skinpreviewX=rewX1-280;
var arv = (rW*0.85);
if (rewX2>=arv) {tagumineXkordaja=0.15;startreward=false;oncer=false;readytouse=true;oncer2=true}
	} 
	
	// mid animation
		if (rewX1>sta_x2) && (oncer) {oncer=false;tohibLiikuda=false;rewX2=rW*0.15; rewX1=sta_x2; alarm[0]=120;  }
	
	
	
	if (rewX1>sta_x2-110) {
		if (oncer2)
		{
			sprite_index=spriteATK;
			if (skinpreviewY>rH*0.53) {skinpreviewY-=1+(0.03*(point_distance(0,skinpreviewY,0,rH*0.55)));}
		} else {
			
			if (skinpreviewY<rH*0.63) {skinpreviewY+=2+(0.03*(point_distance(0,skinpreviewY,0,rH*0.5)));}	
			else {skinpreviewY=rH*0.63; sprite_index=sprite;  }
		}
	
	}
	
	
	
	
	
}





if keyboard_virtual_status()
{
	onlyonce=true;
	if (string_length(keyboard_string)<limit) 
	{
	    message = keyboard_string;
	}
	else
	{
	    keyboard_string = message;
	}
		
		
	if keyboard_virtual_status() {
	    sKeyboardInput = keyboard_string; //COPY VIRTUAL KEYBOARD INPUT TO STRING
	    if keyboard_check_pressed(vk_enter)
			{
	        keyboard_virtual_hide(); //CLOSE VIRTUAL KEYBOARD
	        keyboard_string = ""; //RESET VIRTUAL KEYBOARD DATA
			alarm[10]=1;
	        }
	    }
} else {	
	sKeyboardInput = keyboard_string;
	if (onlyonce){onlyonce=false; alarm[10]=1;	}
message="ENTER PROMO CODE";
}
		
