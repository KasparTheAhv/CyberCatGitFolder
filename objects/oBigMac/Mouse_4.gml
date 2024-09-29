/// @desc
if instance_exists(oText) or instance_exists(oTextFloat) {exit;}

			UnlockNoteEgg("Egg",2);
			var texter="How does this BigMac\nstill look tasty.";
			with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
			{
			timer=120;
			target=instance_nearest(x,y,oFollowPlayer);
			text = texter;
			length = string_length(text);
			}	