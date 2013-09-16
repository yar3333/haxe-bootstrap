package js.bootstrap;

class Alert
{
	public static inline function alert( j : js.JQuery ) : js.JQuery 
		return untyped j.alert()

	public static inline function alertClose( j : js.JQuery ) : js.JQuery 
		return untyped j.alert("close")
}