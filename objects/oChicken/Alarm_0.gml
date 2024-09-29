/// @desc
if (clickcooldown==0)
{
	clickcooldown=180;
	audio_stop_sound(song);
	if (songnr<10) {songnr+=1;} else {songnr=0;}
	
	// song 1 do i wanna know
	if (songnr==0) {
		song=Mu1;
		var texter="Do you know Arctic monkeys? \n Do you wanna know?";
		}
	// song 2 dunno what it is	
	if (songnr==1) {
		song=Mu2;
		var texter="I promise you're gonna hate this one!";
		}
	// song 3 something fast	
	if (songnr==2) {
		song=Mu3;
		var texter="How about some country?";
		}
	// song 4 potter	
	if (songnr==3) {
		song=Mu4;
		var texter="Picked this one up during \n my visit to Hogwarts.";
		}	
	// song 5 my own
	if (songnr==4) {
		song=Mu5;
		var texter="This ones made by Kaspar himself!";
		}	
	// song 6 pop2
	if (songnr==5) {
		song=Mu6;
		var texter="Do you remember the Dahaka \n chases in Prince Of Persia?";
		}	
	// song 7 r u mine
	if (songnr==6) {
		song=Mu7;
		var texter="And another on from Arctic Monkeys!";
		}	
	// song 8 smoke on water	
	if (songnr==7) {
		song=Mu8;
		var texter="Water on fire or smoke on water?";
		}	
	// song 9 zombie
	if (songnr==8) {
		song=Mu9;
		var texter="21 Days Later.";
		}
	// song 10 tetris
	if (songnr==9) {
		song=Mu10;
		var texter="The game most people are told to \n play when they suck at another game.";
		}
	// song 11 titanic	
	if (songnr==10) {
		song=Mu11;
		var texter="Near, far.. you sing the rest!";
		}	
	playing=true;
	play_sound(song,false);
	
	





with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
	{
	timer=120;
	target=other;
	text = texter;
	length = string_length(text);
	}	
	
UnlockNoteEgg("Egg",2);
	
	
}