package js.bootstrap;

class Editable
{
	public static inline function editable(jq:js.JQuery, ?params : { 
		type : String, /*="text"*/,
		placement : String /*="right"*/,
		mode : String /*="popup"*/,
		success : String->String->Void /*=function(response, value){}*/
	}) : Void
	{
		return jq.editable(params);
	}
}