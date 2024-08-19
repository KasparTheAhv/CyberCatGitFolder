scale=1;
gW=global.gameWidth;
gH=global.gameHeight;
gWh=gW*0.5;
gHh=gH*0.5;
pageswitching=false;
gHmodded=gH*0.7;

myscale=gHmodded/256*10;
myscale=floor(myscale);
myscale=myscale*0.1;



halfbooksize=sprite_get_width(sBookPages)*myscale*0.5;



allownext=false;

self.x=gWh-halfbooksize;
self.y=-100;
pascale=myscale;
vascale=-1*myscale;
backpascale=myscale;
backvascale=-1*myscale;



curPage=0;
minpages=0;
maxpages=0;

coverscale=myscale;
coverimage=1;

image_yscale=myscale;
image_xscale=myscale;
VasakBack=curPage;
VasakFront=curPage;
ParemBack=curPage+3;
ParemFront=curPage+1;
stage=0;