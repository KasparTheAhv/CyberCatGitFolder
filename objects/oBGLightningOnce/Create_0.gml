if layer_exists(oRoomController.thunderlay_id)
{
	dep = layer_get_depth(oRoomController.thunderlay_id);
	back_id = oRoomController.thunderback_id;
	show_debug_message("created temporary BG1")
}
show_debug_message("created temporary BG2");
alpha=0;
self.depth=dep;
alarm[0]=1;