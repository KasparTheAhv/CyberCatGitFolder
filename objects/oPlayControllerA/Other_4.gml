/// @desc
if (global.recMode)
{
	if !(layer_exists("recLayer")) && (layer_exists("Edge"))
	{
		var ogEdgeDepth = layer_get_depth("Edge");
		layer_create(ogEdgeDepth,"recLayer")
		var _fx_tint = fx_create("_filter_edgedetect");
		fx_set_parameter(_fx_tint, "g_Threshold", 0);
		layer_set_fx("recLayer", _fx_tint);
	}
}