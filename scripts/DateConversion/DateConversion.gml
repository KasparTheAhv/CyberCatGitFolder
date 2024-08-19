/// @desc DateConversion(inputDate)
/// @arg inputDate
function DateConversion(){
 
	var i = argument[0];
    // script to ensure date is always 6 digit format: dd/mm/yy on any operating system / country
    // dateTime(real) = argument0
    // use: var date = scr_date_string(date_current_datetime());     
    return
    string_replace(string_format(date_get_day(i), 2, 0), " ", "0")
    +"/"+
    string_replace(string_format(date_get_month(i), 2, 0), " ", "0")
    +"/"+
    string_copy(date_get_year(i),string_length(date_get_year(i))-1, 2)
}

