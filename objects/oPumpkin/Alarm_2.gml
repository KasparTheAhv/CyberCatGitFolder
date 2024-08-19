/// @desc attack

var whox=oFollowPlayer.x;
var minx = whox-1200;
var maxx = whox+1200;






instance_create_layer(minx+220,200,"BefEdge",oVinedrop);
instance_create_layer(minx+440,200,"BefEdge",oVinedrop);
instance_create_layer(minx+660,200,"BefEdge",oVinedrop);
instance_create_layer(minx+880,200,"BefEdge",oVinedrop);


instance_create_layer(maxx-220,200,"BefEdge",oVinedrop);
instance_create_layer(maxx-440,200,"BefEdge",oVinedrop);
instance_create_layer(maxx-660,200,"BefEdge",oVinedrop);
instance_create_layer(maxx-880,200,"BefEdge",oVinedrop);






