/// @desc summon new tut book
SummonTutBook(self.id,9);
if instance_exists(oCrystalStatue)
{
	oCrystalStatue.alarm[1]=30;
}
TaskDone(2);
TaskNew(3,"Soul reap yourself out");