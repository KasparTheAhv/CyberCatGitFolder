/// @desc

if (garlicdeath)
{
	
	part_particles_create(oRoomController.part_sys, x, y,oRoomController.part23,irandom_range(34,34));
	
	part_particles_create(oRoomController.part_sys, x, y,oRoomController.part14,irandom_range(14,20));
	
	if (oGUIBAR.task3!="")
	{
		oGUIBAR.task3="- Task failed";
		oGUIBAR.task3col="[#EE2F36]";
		oGUIBAR.task2="- Task failed";
		oGUIBAR.task2col="[#EE2F36]";
	}
	
}