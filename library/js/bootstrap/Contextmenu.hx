package js.bootstrap;

import js.JQuery;

class Contextmenu
{
	public static inline function contextmenu(jq:js.JQuery, ?params :
	{ 
		  ?target: String
		, ?before : js.JQuery.JqEvent->js.JQuery->Bool
		, ?onItem : js.JQuery.JqEvent->js.JQuery->Void
	}
	) : Void untyped
	{
		jq.contextmenu(params);
	}
		
	public inline function closemenu(?e:js.JQuery.JqEvent) : Void untyped __js__("this.closemenu(e)");
	public inline function destroy() : Void untyped __js__("this.destroy()");
	public inline function getMenu() : JQuery return untyped __js__("this.getMenu()");
}