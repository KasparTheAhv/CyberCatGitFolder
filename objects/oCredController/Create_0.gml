/// @desc
alarm[0]=60; // turn on sliding

camera_set_view_size(view_camera[0],800,global.menuH);
instance_create_layer(x,y,"Instances_2",oSearch);

// PLEASE DONT FORGET TO CREDIT:
// <a href="https://www.vecteezy.com/free-png/oak-tree">Oak Tree PNGs by Vecteezy</a>
// flying oak tree

start_x=noone;
start_y=noone;
guibuttonsy=0.1*room_height;
guiexit=0.05*room_width;
guicontinue=0.95*room_width;
guispeedy=0.9*room_height;
slideind=1;
speedind=5;
speeditself=1;
sliding=false;
mainy = room_height*0.5;
mainx = room_width*0.5;
file_grid = load_csv("comments.csv");

cred1y=mainy; 
cred3y=mainy+250; 
cred4y=mainy+400;
cred2y=mainy+600; 

cred1scale=0.5;
cred2scale=1;
cred3scale=1;
cred4scale=1;

vasakX=room_width*0.3;
paremX=room_width*0.7;
for (var i =0; i<global.maxComments; i++)
{
	var yy = 1000 + ( i * 120);
	with (instance_create_layer(mainx,yy,"Instances",oCommentBox))
	{
		myNr=i+1;
		commentRoom=ds_grid_get(other.file_grid , 2, i);
		commentText=ds_grid_get(other.file_grid , 1, i);
		commentUser=ds_grid_get(other.file_grid , 0, i);
		
		txtscaleuser="[scale,0.45]";
		txtscalecom="[scale,0.35]";
		wholeuser=txtscaleuser+"[fOrbitron][fa_center][fa_middle]"+string(commentUser);
		wholecom=txtscalecom+"[fOrbitron][fa_center][fa_middle]"+string(commentText)
			// uus teksti kontroll
			var isString=false;
			var controlled = string_digits(string(commentRoom));
			if (controlled=="") {isString=true;}
			if (isString)
			{
				var stringed = string(commentRoom);
				if (stringed=="GLO") {typeofstring=0;}
				if (stringed=="EGG") {typeofstring=1;}
				if (stringed=="VFX") {typeofstring=2;}
				if (stringed=="TRA") {typeofstring=3;}
				if (stringed=="PRO") {typeofstring=4;}
				spriteused=sNotNumber;commentRoom=typeofstring;
			} else { // isnt a string , is a room number instead 
			spriteused=sLevelImages; commentRoom=real(commentRoom)+1;	
			}
				// uus teksti kontroll ENDING
		scale=1.5;
		image_xscale=scale;image_yscale=scale;
		if (i % 2 == 0) {image_xscale=-scale;
					self.x=x+48;
					userX=x+(120*image_xscale)+48;
					commentX=x+(120*image_xscale)+48;
			
			} else { image_xscale=scale;
					self.x=x-48;
					userX=x+(120*image_xscale)-48;
					commentX=x+(120*image_xscale)-48;
				} 
		// x+120 and y - 20 = commenter

		userY=y-(20*image_yscale);
		commentY=y+(12*image_yscale);
		algusy=y;
		// scribble
		textscale=0.3;
		maxWidth=170*scale;
	}
}