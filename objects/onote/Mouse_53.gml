if instance_exists(oPlayerGod) {exit;}
if instance_exists(oPlayerAttack) {exit;}
if instance_exists(oText) {exit;}
if instance_exists(oTextFloat) {exit;}

if (room==Room0) && (global.booktutsequence==1) {exit;}

if (distance_to_object(oPlayer)<100) && (point_distance(x,y,mouse_x,mouse_y)<25)
{
	alarm[5]=1;
	if (cid_event==0) {
		UnlockNoteEgg("Note",1);
		exit;
	}	
	if (cid_event==1) {
		UnlockNoteEgg("Note",2);
		exit;
	}	
	if (cid_event==2) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==3) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==4) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==5) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==6) {
		UnlockNoteEgg("Egg",1);
		exit;
	}
	if (cid_event==7) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==8) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==9) {
		UnlockNoteEgg("Note",3);
		exit;
	}
	if (cid_event==10) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==11) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==12) {
		UnlockNoteEgg("Note",3);
		exit;
	}
	if (cid_event==13) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==14) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==15) {
		UnlockNoteEgg("Note",3);
		exit;
	}
	if (cid_event==16) {
		UnlockNoteEgg("Note",4);
		exit;
	}
	if (cid_event==17) {
		UnlockNoteEgg("Note",5);
		exit;
	}
	if (cid_event==18) {
		UnlockNoteEgg("Note",6);
		exit;
	}
	if (cid_event==19) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==20) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==21) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==22) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==23) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==24) {
		UnlockNoteEgg("Note",3);
		exit;
	}
	if (cid_event==25) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==26) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==27) {
		UnlockNoteEgg("Note",3);
		exit;
	}
	if (cid_event==28) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==29) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==30) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==31) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==32) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==33) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==34) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==35) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==36) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==37) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==38) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==39) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==40) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==41) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==42) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==43) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==44) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==45) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==46) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==47) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==48) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==49) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==50) {
		UnlockNoteEgg("Note",3);
		exit;
	}
	if (cid_event==51) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==52) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==53) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==54) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==55) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==56) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==57) {
		UnlockNoteEgg("Note",3);
		exit;
	}
	if (cid_event==58) {
		UnlockNoteEgg("Note",4);
		exit;
	}
	if (cid_event==59) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==60) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==61) {
		UnlockNoteEgg("Note",3);
		exit;
	}
	if (cid_event==62) {
		UnlockNoteEgg("Note",4);
		exit;
	}
	if (cid_event==63) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==64) {
		UnlockNoteEgg("Note",2);	
		exit;
	}
	if (cid_event==65) {
		UnlockNoteEgg("Note",3);
		exit;
	}
	if (cid_event==66) {
		UnlockNoteEgg("Note",4);
		exit;
	}
	if (cid_event==67) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==68) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==69) {
		UnlockNoteEgg("Note",3);
		exit;
	}
	if (cid_event==70) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==71) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==72) {
		UnlockNoteEgg("Note",3);
		exit;
	}
	if (cid_event==73) {
		UnlockNoteEgg("Note",4);
		exit;
	}
	if (cid_event==74) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==75) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==76) {
		UnlockNoteEgg("Note",3);
		exit;
	}
	if (cid_event==77) {
		UnlockNoteEgg("Note",4);
		exit;
	}
	if (cid_event==78) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==79) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==80) {
		UnlockNoteEgg("Note",3);
		exit;
	}
	if (cid_event==81) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==82) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==83) {
		UnlockNoteEgg("Note",3);
		exit;
	}
	if (cid_event==84) {
		UnlockNoteEgg("Note",1);
		exit;
	}
	if (cid_event==85) {
		UnlockNoteEgg("Note",2);
		exit;
	}
	if (cid_event==86) {
		UnlockNoteEgg("Note",3);
		exit;
	}
// end
}