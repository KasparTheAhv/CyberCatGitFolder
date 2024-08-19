function FakeTileAlphaSet()
{
	if (event_number == 0)
	{
	shader_set(shTransparentTiles);
	shader_set_uniform_f(global.uFakeTileAlpha,global.fakeTileAlpha);
	}
}