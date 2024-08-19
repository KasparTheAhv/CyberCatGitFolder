/// @desc SkinReload(isPreview)
/// @arg isPreview false or true

function SkinReload()
{
    var isPreview;
    isPreview = argument[0];
	
	if (isPreview)
	{
	var curskin= global.skin;		
	} else {
	var settingsmap = ds_map_secure_load("settings.sav");
	var curskin=ds_map_find_value(settingsmap,"skin");	
	}
	
if (curskin==1) // default
{
	 global.sPlayer=sPlayer; // ns         
	global.sPlayerA=sPlayerA; // jump
	global.sPlayerR=sPlayerR; // move
  global.sPlayerAFK=sPlayerAFK; //afking  
    global.sPlayerD=sPlayerD; // damage
    global.sPlayerF=sPlayerF; // fall  
  global.sPlayerGod=sPlayerGod; //god
        global.sGun=sGun; //god gun´
    global.sPlayerM=sPlayerM; // milk1
   global.sPlayerMM=sPlayerMM; //milk2
     global.sBullet=sBullet; // bullet
	 global.catskinscale=0.75; // default is 0.75
	 global.godparticle=true; //
}
if (curskin==2) // termi
{
	 global.sPlayer=s2Player; // ns         
	global.sPlayerA=s2PlayerA; // jump
	global.sPlayerR=s2PlayerR; // move
  global.sPlayerAFK=s2PlayerAFK; //afking  
    global.sPlayerD=s2PlayerD; // damage
    global.sPlayerF=s2PlayerF; // fall  
  global.sPlayerGod=s2PlayerGod; //god
        global.sGun=s2Gun; //god gun´
    global.sPlayerM=s2PlayerM; // milk1
   global.sPlayerMM=s2PlayerMM; //milk2
     global.sBullet=sBulletLaser; // bullet
	 global.catskinscale=0.75; // default is 0.75
	 global.godparticle=true; //
}
if (curskin==3) // car
{
	 global.sPlayer=s3Player; // ns         
	global.sPlayerA=s3PlayerA; // jump
	global.sPlayerR=s3PlayerR; // move
  global.sPlayerAFK=s3PlayerAFK; //afking  
    global.sPlayerD=s3PlayerD; // damage
    global.sPlayerF=s3PlayerF; // fall  
  global.sPlayerGod=s3PlayerGod; //god
        global.sGun=s3Gun; //god gun´
    global.sPlayerM=s3PlayerM; // milk1
   global.sPlayerMM=s3PlayerMM; //milk2
     global.sBullet=sBulletGear; // bullet
	 global.catskinscale=1; // default is 0.75
	 global.godparticle=false; //
}
if (curskin==4) // batcat
{
	 global.sPlayer=s4Player; // ns         
	global.sPlayerA=s4PlayerA; // jump
	global.sPlayerR=s4PlayerR; // move
  global.sPlayerAFK=s4PlayerAFK; //afking  
    global.sPlayerD=s4PlayerD; // damage
    global.sPlayerF=s4PlayerF; // fall  
  global.sPlayerGod=s4PlayerGod; //god
        global.sGun=s4Gun; //god gun´
    global.sPlayerM=s4PlayerM; // milk1
   global.sPlayerMM=s4PlayerMM; //milk2
     global.sBullet=sBulletRed; // bullet
	 global.catskinscale=0.75; // default is 0.75
	 global.godparticle=false; //
}
if (curskin==5) // rosy
{
	 global.sPlayer=s5Player; // ns         
	global.sPlayerA=s5PlayerA; // jump
	global.sPlayerR=s5PlayerR; // move
  global.sPlayerAFK=s5PlayerAFK; //afking  
    global.sPlayerD=s5PlayerD; // damage
    global.sPlayerF=s5PlayerF; // fall  
  global.sPlayerGod=s5PlayerGod; //god
        global.sGun=s5Gun; //god gun´
    global.sPlayerM=s5PlayerM; // milk1
   global.sPlayerMM=s5PlayerMM; //milk2
     global.sBullet=sBulletFlowers; // bullet
	 global.catskinscale=0.75; // default is 0.75
	 global.godparticle=false; //
}
if (curskin==6) // anatomy
{
	 global.sPlayer=s6Player; // ns         
	global.sPlayerA=s6PlayerA; // jump
	global.sPlayerR=s6PlayerR; // move
  global.sPlayerAFK=s6PlayerAFK; //afking  
    global.sPlayerD=s6PlayerD; // damage
    global.sPlayerF=s6PlayerF; // fall  
  global.sPlayerGod=s6PlayerGod; //god
        global.sGun=s6Gun; //god gun´
    global.sPlayerM=s6PlayerM; // milk1
   global.sPlayerMM=s6PlayerMM; //milk2
     global.sBullet=sBulletSoul; // bullet
	 global.catskinscale=0.75; // default is 0.75
	 global.godparticle=true; //
}
if (curskin==7) // Fan request - bee
{
	 global.sPlayer=s7Player; // ns         
	global.sPlayerA=s7PlayerA; // jump
	global.sPlayerR=s7PlayerR; // move
  global.sPlayerAFK=s7PlayerAFK; //afking  
    global.sPlayerD=s7PlayerD; // damage
    global.sPlayerF=s7PlayerF; // fall  
  global.sPlayerGod=s7PlayerGod; //god
        global.sGun=s7Gun; //god gun´
    global.sPlayerM=s7PlayerM; // milk1
   global.sPlayerMM=s7PlayerMM; //milk2
     global.sBullet=sBulletCS2; // bullet
	 global.catskinscale=0.75; // default is 0.75
	 global.godparticle=false; //
}	
if (curskin==8) // Fan made - theraelseb
{
	 global.sPlayer=s8Player; // ns         
	global.sPlayerA=s8PlayerA; // jump
	global.sPlayerR=s8PlayerR; // move
  global.sPlayerAFK=s8PlayerAFK; //afking  
    global.sPlayerD=s8PlayerD; // damage
    global.sPlayerF=s8PlayerF; // fall  
  global.sPlayerGod=s8PlayerGod; //god
        global.sGun=s8Gun; //god gun´
    global.sPlayerM=s8PlayerM; // milk1
   global.sPlayerMM=s8PlayerMM; //milk2
     global.sBullet=sBulletCS4; // bullet
	 global.catskinscale=0.75; // default is 0.75
	 global.godparticle=false; //
}	
if (curskin==9) // Fan made - pirat
{
	 global.sPlayer=s9Player; // ns         
	global.sPlayerA=s9PlayerA; // jump
	global.sPlayerR=s9PlayerR; // move
  global.sPlayerAFK=s9PlayerAFK; //afking  
    global.sPlayerD=s9PlayerD; // damage
    global.sPlayerF=s9PlayerF; // fall  
  global.sPlayerGod=s9PlayerGod; //god
        global.sGun=s9Gun; //god gun´
    global.sPlayerM=s9PlayerM; // milk1
   global.sPlayerMM=s9PlayerMM; //milk2
     global.sBullet=sBulletCS3; // bullet
	 global.catskinscale=0.75; // default is 0.75
	 global.godparticle=false; //
}
if (curskin==10) // For lõunaka fan - Ghetto
{
	 global.sPlayer=s10Player; // ns         
	global.sPlayerA=s10PlayerA; // jump
	global.sPlayerR=s10PlayerR; // move
  global.sPlayerAFK=s10PlayerAFK; //afking  
    global.sPlayerD=s10PlayerD; // damage
    global.sPlayerF=s10PlayerF; // fall  
  global.sPlayerGod=s10PlayerGod; //god
        global.sGun=s10Gun; //god gun´
    global.sPlayerM=s10PlayerM; // milk1
   global.sPlayerMM=s10PlayerMM; //milk2
     global.sBullet=sCoin; // bullet
	 global.catskinscale=0.75; // default is 0.75
	 global.godparticle=true; //
}

if (curskin==11) // Kawai Cat
{
	 global.sPlayer=s11Player; // ns         
	global.sPlayerA=s11PlayerA; // jump
	global.sPlayerR=s11PlayerR; // move
  global.sPlayerAFK=s11PlayerAFK; //afking  
    global.sPlayerD=s11PlayerD; // damage
    global.sPlayerF=s11PlayerF; // fall  
  global.sPlayerGod=s11PlayerGod; //god
        global.sGun=s11Gun; //god gun´
    global.sPlayerM=s11PlayerM; // milk1
   global.sPlayerMM=s11PlayerMM; //milk2
     global.sBullet=sBulletHeart; // bullet
	 global.catskinscale=0.75; // default is 0.75
	 global.godparticle=false; //
}



	if instance_exists(oPlayerMenu)
	{
		with(oPlayerMenu) {
			if (sprite_index==sPlayerR){sprite_index=global.sPlayerR;}
			if (sprite_index==sBird)
			{
				if variable_global_exists("sPlayerGod")
				{
				sprite=global.sPlayerGod;	
				spriteGun=global.sGun;
				}
			}
	}
	}
}