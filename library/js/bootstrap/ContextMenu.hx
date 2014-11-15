package js.bootstrap;

import js.JQuery;

extern class ContextMenu
{
	private static function __init__() : Void
	{
		haxe.macro.Compiler.includeFile("js/bootstrap/ContextMenu.js");
	}
	
	static inline function contextmenu(jq:js.JQuery, ?params :
	{ 
		  ?target: String
		, ?before : ContextMenu->js.JQuery.JqEvent->js.JQuery->Bool
		, ?onItem : ContextMenu->js.JQuery.JqEvent->js.JQuery->Void
		, ?onShow : ContextMenu->Void
	}
	) : ContextMenu
	{
		return untyped jq.contextmenu(params);
	}
		
	function close() : Void;
	function destroy() : Void;
	function getMenu() : JQuery;
}