package js.bootstrap;

class Contextmenu
{
	public static inline function contextmenu(jq:js.JQuery, ?params : { 
		  ?target: String
		, ?before : js.JQuery.JqEvent->js.JQuery->Bool
		, ?onItem : js.JQuery.JqEvent->js.JQuery->Void
	}) : Void untyped
	{
		return jq.contextmenu(params);
	}
}