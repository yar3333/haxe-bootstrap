package js.bootstrap;

typedef TooltipOptions =
{
	?animation 	: Bool,
	?placement 	: Dynamic, // or function...
	?selector 	: String,
	?title 		: Dynamic,
	?content 	: Dynamic,
	?delay 		: Dynamic
}

class Tooltip
{
	public static inline function tooltip(jq:js.JQuery, ?opts:TooltipOptions) : js.JQuery 
	{
		return untyped jq.tooltip(opts);
	}

	public static inline function tooltipToggle(jq:js.JQuery) : js.JQuery
	{
		return untyped jq.tooltip("toggle");
	}
		
	public static inline function tooltipShow(jq:js.JQuery) : js.JQuery 
	{
		return untyped jq.tooltip("show");
	}
	
	public static inline function tooltipHide(jq:js.JQuery) : js.JQuery 
	{
		return untyped jq.tooltip("hide");
	}
}