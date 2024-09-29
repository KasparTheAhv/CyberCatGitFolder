///@desc whatTaskNr
function TaskDone(whatTaskNr)
{
	var Nr = argument[0];

	with (oGUIBAR) {
	
		var varName="task"+string(Nr);
		variable_instance_set(oGUIBAR,varName,"+ Task done!");
		var varName="task"+string(Nr)+"col";
		variable_instance_set(oGUIBAR,varName,"[#4CFF4C]");		
		alarm[1]=1;
		} // resize the box
}