/// @desc
camera_set_view_size(view_camera[0],800,global.menuH);
var settingsmap= ds_map_secure_load("settings.sav");
curskin=ds_map_find_value(settingsmap,"skin");
selectedskin=curskin;
global.skin=selectedskin;


rewtype=0;

startreward=false;
openedonce=false;
rW=room_width;
rH=room_height;
limit=25;
message = "ENTER PROMO CODE";
////////// Visual / windows
skinpreviewY=rH*0.63;
oncer2=true;

// promo box
pro_x1 = rW*0.15;
	pro_xx = rW*0.5;	
pro_x2 = rW*0.85;
pro_y1 = rH*0.05;
	pro_yy = rH*0.115;
pro_y2 = rH*0.18;

// stats columns
stacolumn1x=rW*0.35// last default0.325;
stacolumn2x=rW*0.65// last default0.675;



// stats box
sta_x1 = rW*0.15;
sta_x2 = rW*0.85;
sta_y1 = rH*0.23;
sta_y2 = rH*0.77;

sta_hei=rH*0.54;
sta_yMid= rH*0.5;

// achieve
ach_x1 = rW*0.15;
	ach_xx = rW*0.3;	
ach_x2 = rW*0.45;
ach_y1 = rH*0.82;
	ach_yy = rH*0.885;	
ach_y2 = rH*0.95;

// leader
lea_x1 = rW*0.55;
	lea_xx = rW*0.7;	
lea_x2 = rW*0.85;
lea_y1 = rH*0.82;
	lea_yy = rH*0.885;	
lea_y2 = rH*0.95;

// reward rectangle
onlyonce=false;
readytouse=true;
tagumineXkordaja=0.15;
tohibLiikuda=false;
oncer=false;
rewX1=rW*tagumineXkordaja;
rewX2=rewX1-560;
rewDrawnX1=clamp(rewX1,rW*0.15,rW*0.85);
rewX2=clamp(rewX2,rW*0.15,rW*0.85);
skinpreviewX=rewX1-280;
TXTalpha=1;
/// SCRIBBLE

textscale=0.32;


skinname="";
rewTXT="";

// play games stats
PlayStats=false;
if instance_exists(oPlayControllerA)
{
	if (oPlayControllerA.display_name=="Unknown") or (oPlayControllerA.display_name=="Offline")
	{
		PlayStats=false;
	} else {
		PlayStats=true;	
	}
}

//rainbow
var time = current_time;
 color1 = make_color_hsv((time*0.1 % 255), 255, 255);
 color2 = make_color_hsv((time+500)*0.1 % 255, 255, 255);
 
 //stats
var settingsmap=ds_map_secure_load("settings.sav");
 
 
 leaps=ds_map_find_value(settingsmap,"STATS_Leaps"); // done
 if is_undefined(leaps) {leaps=0;}
 
 leapshit=ds_map_find_value(settingsmap,"STATS_Leapshit"); // done
 if is_undefined(leapshit) {leapshit=0;}
 
 kills=ds_map_find_value(settingsmap,"STATS_Kills"); // done
 if is_undefined(kills) {kills=0;} 
 
 deaths=ds_map_find_value(settingsmap,"deathCount"); // done
 if is_undefined(deaths) {deaths=0;}
 
 restarts=ds_map_find_value(settingsmap,"STATS_Restarts"); //done
 if is_undefined(restarts) {restarts=0;}
 
 catnip=ds_map_find_value(settingsmap,"STATS_Catnip"); // done
 if is_undefined(catnip) {catnip=0;}
 
 becomegod=ds_map_find_value(settingsmap,"STATS_God"); // done
 if is_undefined(becomegod) {becomegod=0;}
 
 cnmissed=ds_map_find_value(settingsmap,"STATS_Cnmissed"); // done
 if is_undefined(cnmissed) {cnmissed=0;}
 
 locks=ds_map_find_value(settingsmap,"STATS_Locks"); // done
 if is_undefined(locks) {locks=0;}

 //statstext 
 
 
				   statstext="Leaps: "+string(leaps);
statstext=string(statstext)+"\nLeaps Hit: "+string(leapshit);
statstext=string(statstext)+"\nKills: "+string(kills);
statstext=string(statstext)+"\nDeaths: "+string(deaths);
statstext=string(statstext)+"\nRestarts: "+string(restarts);
statstext=string(statstext)+"\nCatnip: "+string(catnip);
statstext=string(statstext)+"\nGod state: "+string(becomegod);

			statstext2=" ";	   
statstext2=string(statstext2)+"\nCOMMUNITY";
statstext2=string(statstext2)+"\nREQUESTED: ";
statstext2=string(statstext2)+"\n";
statstext2=string(statstext2)+"\nCatnip missed: "+string(cnmissed);
statstext2=string(statstext2)+"\nLocks opened: "+string(locks);
statstext2=string(statstext2)+"\n ";
