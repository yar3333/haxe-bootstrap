package js.bootstrap;

typedef PopoverOptions =
{
	?animation 	: Bool,
	?placement 	: Dynamic, // or function...
	?selector 	: String,
	?trigger 	: Dynamic,
	?title 		: Dynamic,
	?content 	: Dynamic,
	?delay 		: Dynamic
}

class Popover
{
	public static inline function popover(jq:js.JQuery, ?opts:PopoverOptions) : js.JQuery
	{
		return untyped jq.popover(opts);
	}

	public static inline function popoverToggle(jq:js.JQuery) : js.JQuery 
	{
		return untyped jq.popover("toggle");
	}
		
	public static inline function popoverShow(jq:js.JQuery) : js.JQuery
	{
		return untyped jq.popover("show");
	}
	
	public static inline function popoverHide(jq:js.JQuery) : js.JQuery
	{
		return untyped jq.popover("hide");
	}
}