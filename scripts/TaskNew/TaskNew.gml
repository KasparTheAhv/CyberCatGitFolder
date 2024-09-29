/// @arg taskNrNew
/// @arg taskNewText
function TaskNew()
{
	var Nr = argument[0];
	var Txt = argument[1];
	with (oGUIBAR) {
	
		var varName="task"+string(Nr);
		variable_instance_set(oGUIBAR,varName,"- "+string(Txt));
		var varName="task"+string(Nr)+"col";
		variable_instance_set(oGUIBAR,varName,"[#FFFFFF]");		
		alarm[1]=1;
		} // resize the box
}