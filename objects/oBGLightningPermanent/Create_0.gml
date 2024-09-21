if layer_exists("CheckerBoard")
{
	dep = layer_get_depth("CheckerBoard");
	var lay_id = layer_get_id("CheckerBoard");
	back_id = layer_background_get_id(lay_id);
}
alpha=0.01;
self.depth=dep;
alarm[0]=600;