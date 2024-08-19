/// @desc Idle action checker
if (current_state==monkeystates.stay)
{
	// walking pic and if not alarmed for a walk then do it
	if (alarm_get(1)==-1) {alarm[1]=irandom_range(60,180);}
		// Check if god / initiate tailthrow 
	if instance_exists(oPlayerGod)
	{
	var xx = room_width*0.5;
	var yy = room_height*0.65;
				TailDestX=0;
				TailDestY=0;
				dir = 0;
				dist = 0;
			var	leitud= false;
			for (var i = 0; i <= 17; i++)
			{
				var extra=8*i;
				if (tilemap_get_at_pixel(tilemap,xx,yy+50-extra)==1) 
				{
				leitud=true;
				TailDestX=xx;
				TailDestY=yy+50-extra;
				dir = point_direction(x,y,TailDestX,TailDestY);
				dist = point_distance(x,y,TailDestX,TailDestY);
				if (self.x<TailDestX) {image_xscale=-scale;} else {image_xscale=scale;}	
				break;
				}
			}
			
			if (leitud)
			{
			alarm[0]=-1; alarm[1]=-1; alarm[2]=-1; hsp=0;
			image_index=0;image_speed=0;sprite_index=sMonkeR;current_state=monkeystates.tailthrow;	
			with (instance_create_layer(x,y,layer,oMonkeyTail))
				{
				maxDist=other.dist;
				image_xscale=other.image_xscale*2;
				image_yscale=other.image_yscale*2;
				tonqScale=2*other.image_xscale*2;
				depth=other.depth+15;
				dir=other.dir;	
				owner=other.id;
				}
				exit;
			} else {alarm[0]=1;}
	
	
	
	}
	// Check if player nearby and initiate tailthrow 
	if instance_exists(oPlayer)
	{
	var xx = oPlayer.x;
	var yy = oPlayer.y;
	if (point_distance(oPlayer.x,oPlayer.y,x,y)<150) && (cooleddown)
		{
			if (room==Room15){oGUIBAR.task1="- Defeat all monkeys";}
			var xmod=0;
			if (oPlayer.x<self.x) {xmod=irandom_range(-80,-40);} else  {xmod=irandom_range(40,80);}
			
				TailDestX=0;
				TailDestY=0;
				dir = 0;
				dist = 0;
			var	leitud= false;
			for (var i = 0; i <= 14; i++)
			{
				var extra=8*i;
				if (tilemap_get_at_pixel(tilemap,xx+xmod,yy+50-extra)==1) 
				{
				leitud=true;
				TailDestX=xx+xmod;
				TailDestY=yy+50-extra;
				dir = point_direction(x,y,TailDestX,TailDestY);
				dist = point_distance(x,y,TailDestX,TailDestY);
				if (self.x<TailDestX) {image_xscale=-scale;} else {image_xscale=scale;}	
				break;
				}
			}
			
			if (leitud)
			{
			alarm[0]=-1; alarm[1]=-1; alarm[2]=-1; hsp=0;
			image_index=0;image_speed=0;sprite_index=sMonkeR;current_state=monkeystates.tailthrow;	
			with (instance_create_layer(x,y,layer,oMonkeyTail))
				{
				maxDist=other.dist;
				image_xscale=other.image_xscale*2;
				image_yscale=other.image_yscale*2;
				tonqScale=2*other.image_xscale*2;
				depth=other.depth+15;
				dir=other.dir;	
				owner=other.id;
				}
				exit;
			} else {alarm[0]=1;}
	
		
		}

	}

	
	
	
	
}
alarm[0]=10;