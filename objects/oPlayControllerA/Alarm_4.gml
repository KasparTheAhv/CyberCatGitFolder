/// @desc ATTEMPT GOOGLe LOAD
// You can write your code in this editor


if (logged_in)
{
		if os_is_network_connected()
		{
		GooglePlayServices_SavedGames_Load(true);
		show_debug_message("PlayCon.alarm[4] load");
		global.loading=1;
		} else {
			show_debug_message("PlayCon.alarm[4] load failed because no internet");
		}
}