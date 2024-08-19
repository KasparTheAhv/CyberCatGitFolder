/// @desc what sound for text
if (whasound<418) {whatsound=choose(snSign2,snSign3,snSign5);} // tavalised
if (whasound>=418)	 {whatsound=snSign4;} //lühike jones
if (whasound==420) {whatsound=snJoonas;} //full jones
if (whasound>420) {whatsound=choose(snSign2,snSign3,snSign5);} // tavalised
// SPECIAL
if (whasound==501) {whatsound=snBird;} 
if (whasound==502) {whatsound=snBirdBoss;} 
if (whasound==503) {whatsound=snBee;} 
if (whasound==504) {whatsound=snHuman;} 
if (whasound==505) {whatsound=snTerminator;} 
if (whasound==506) {whatsound=snDog;} 
if (whasound==507) {whatsound=snDino;} 
if (whasound==508) {whatsound=snAngel;} 
if (whasound==509) {whatsound=snJesus;} 
if (whasound==510) {whatsound=snCthu;} 
if (whasound==511) {whatsound=snTurd;} 
if (whasound==512) {whatsound=snMonkey;} 
if (whasound==513) {whatsound=snTitan;} 
if (whasound==514) {whatsound=snGhost;} 
if (whasound==515) {whatsound=snDemon;} 
if (whasound==516) {whatsound=snDrowning;}
if (whasound==517) {whatsound=snHowling;} 
if (whasound==518) {whatsound=snPig;} 
if (whasound==519) {whatsound=snKnight;}
if (whasound==520) {whatsound=snDragon;} 
if (whasound==521) {whatsound=snBurp;} 
if (whasound==522) {whatsound=snMJ;} 
play_sound(whatsound,false);