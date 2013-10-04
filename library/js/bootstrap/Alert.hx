package js.bootstrap;

class Alert
{
	public static inline function alert(jq:js.JQuery) : js.JQuery 
	{
		return untyped jq.alert();
	}

	public static inline function alertClose(jq:js.JQuery) : js.JQuery 
	{
		return untyped jq.alert("close");
	}
}