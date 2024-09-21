/// @desc
image_speed=0;
image_index=9;
if (room==RoomSkins) {image_index=10;}
image_alpha=1;
var picScale=(global.menuH/410);
var levelButtonScale = picScale*2;
image_xscale=levelButtonScale;
image_yscale=levelButtonScale
leaderOpen=false;
leaderTime=0;
self.x=800*0.05;
self.y=global.menuH*0.3;
draw_self();