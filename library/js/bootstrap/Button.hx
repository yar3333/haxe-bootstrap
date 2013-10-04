package js.bootstrap;

class Button
{
	public static inline function button(jq:js.JQuery, ?state:String) : js.JQuery 
	{
		return untyped jq.button(state);
	}

	public static inline function buttonToggle(jq:js.JQuery) : js.JQuery
	{
		return untyped jq.button("toggle");
	}

	public static inline function buttonLoading(jq:js.JQuery) : js.JQuery
	{
		return untyped jq.button("loading");
	}

	public static inline function buttonReset(jq:js.JQuery) : js.JQuery
	{
		return untyped jq.button("reset");
	}
}