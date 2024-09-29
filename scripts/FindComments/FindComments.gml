/// @desc FindComments()
/// @arg text 


function FindComments(){
var str_search = argument[0];


var array=[];

for (var i =0; i<global.maxComments; i++)
{
	with(oCommentBox) 
	{
		if (myNr==i+1)
		{
			if (string_pos(str_search,commentUser)!=0)
			{
				array_push(array,myNr);
			}
		}
	}
}

with (oSearch)
{
	curfinding=1;
	findings=array;
	maxfindings= array_length(array);
	//show_debug_message(string(findings));
	//show_debug_message(string(maxfindings));
	alarm[1]=2;
}



exit;
}