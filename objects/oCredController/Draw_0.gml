/// @desc
// produced by
draw_sprite_ext(sCredCreator,0,mainx,cred1y,cred1scale,cred1scale,0,c_white,1);

// Coding Tutorials: 
draw_sprite_ext(sCredCoding,0,mainx,cred2y,cred2scale,cred2scale,0,c_white,1);


// Music by:
draw_sprite_ext(sCredPixaFeliScrib,0,vasakX,cred3y,cred3scale,cred3scale,0,c_white,1);
draw_sprite_ext(sCredPixaFeliScrib,1,paremX,cred3y,cred3scale,cred3scale,0,c_white,1);
// Plugins: 
draw_sprite_ext(sCredPixaFeliScrib,2,vasakX,cred4y,cred4scale,cred4scale,0,c_white,1);
draw_sprite_ext(sCredPixaFeliScrib,3,paremX,cred4y,cred4scale,cred4scale,0,c_white,1);
// Buttons: 
draw_sprite_ext(sPause,slideind,guicontinue,guibuttonsy,0.5,0.5,0,c_white,1);
draw_sprite_ext(sPause,3,guiexit,guibuttonsy,0.5,0.5,0,c_white,1);

if (sliding)
{
	draw_sprite_ext(sPause,speedind,guiexit,guispeedy,0.5,0.5,0,c_white,1);
}
// guibuttonsy=0.15*room_height;
// guiexit=0.1*room_width;
// guicontinue=0.9*room_width;