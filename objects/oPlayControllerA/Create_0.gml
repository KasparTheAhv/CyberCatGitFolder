logged_in=false;
display_name="Unknown";
last_played="Unknown";
backspace=0;
path="thumbnail.png";
_maxbook="Unknown";
display_name="Offline";
setmap = ds_map_secure_load("settings.sav");
cloudfirstloaded= ds_map_find_value(setmap,"cloudfirstloaded");
gH=global.gameHeight;
first=true;
// ESIMENE ASYNC ALGAB
if GooglePlayServices_IsAvailable()
{
	GooglePlayServices_IsAuthenticated();
}
dater=0;
global.debugmenu=false;
debugXscale=global.gameWidth/64;
debugYscale=global.gameHeight/64;
// TXT FOR TRANSITION
global.text = [
"Tip: Open notes to increase discovery % of that room.",
"When I downloaded the game,\n I quickly realized it was a rage game.",
"Tip: Don't let go of your attack key too soon.",
"I like staying up late and eating ice cream.",
"Tip: Landing in your attack mode makes you invulnerable for a moment.",
"Add a waifu collection system. Dev: Dafuuq?",
"Tip: Tap objects of interest. They might be easter eggs",
"Fun fact: You probably eat bugs in your sleep.",
"Tip: Sometimes it's smarter to use the restart room option.",
"Cats are like goats if you fry a clock, the pigs can fly.",
"Tip: If you messed up, use the restart room button.",
"The Kiffness x Lonely Cat - Sometimes I'm Alone.",
"Tip: Hold movement joystick upwards to bunnyhop.",
"The toast has lazers. goats are like mushrooms, \n if you shoot a duck, I'm scared of toasters. ",
"Pro Tip: Don't die. Dev tip: Restarting doesn't count as dying.",
"Nuh uh. Get dumped on.",
"Ah shii, here we go again.",
"7\ - whatever the duck that means.",
"You a big L",
"Meow meow meow meow moew meow meow...",
"Don't give him catnip!",
"CyberCat is the best religion",
"Pizza without pinapel",
"Tip: Do not forget to breathe",
"''First you have to finish'' - Michael Schumacher.",
"Ya like reincarnation? cuz you died like {DEATH_COUNT} times?!",
"Bruh, my blind granny didn't restart this much when she was fighting sans",
"Pussy game 2",
"What about putting violence aside and becoming friends?",
];
alarm[3]=2; // shffled array for death notes
maxlength=array_length(global.text);
gW=global.gameWidth;
gH=global.gameHeight;




debugTextScale=(global.gameWidth/2400)*0.75;


// skins setup also alarm[5]
alarm[5]=1;