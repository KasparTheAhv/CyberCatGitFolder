image_xscale=0;
image_yscale=0;
depth=depth-10;
current=0;
target=0.7;
if (global.isAndroid) {elud=irandom_range(1,3); }else { elud=irandom_range(2,5);}
chase=false;
mystandard=irandom_range(150,425);
pathstartloc=random(1);
// What room how many paths:
alarm[10]=choose(120,80);
sizeinc=true;
tilemap = layer_tilemap_get_id("Collision");