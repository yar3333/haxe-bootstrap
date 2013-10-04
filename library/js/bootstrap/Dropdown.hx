package js.bootstrap;

class Dropdown
{
	public static inline function dropdown(jq:js.JQuery) : js.JQuery
	{
		return untyped jq.dropdown();
	}
}