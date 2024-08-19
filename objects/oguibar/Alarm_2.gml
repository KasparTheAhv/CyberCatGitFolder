/// @desc kill player if 0 health after coming back from pause
if (self.hp<=0)
{
SlideTransition(TRANS_MODE.GOTO,room);	
}