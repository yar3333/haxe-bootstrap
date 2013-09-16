package js.bootstrap;

class Editable
{
	public static inline function editable(jq:js.JQuery, ?params : { 
		  ?ajaxOptions : Dynamic // Additional options for submit ajax request
		, ?anim : String // Animation speed (inline mode only)
		, ?autotext : String // auto|always|never
		, ?disabled : Bool // Sets disabled state of editable
		, ?display : Dynamic // Callback to perform custom displaying of value in element's text
		, ?emptyclass : String
		, ?emptytext : String
		, ?error : String->String->Void
		, ?highlight : Dynamic
		, ?mode : String // "popup"
		, ?name : String
		, ?onblur : String
		, ?params : Dynamic
		, ?pk : Dynamic
		, ?placement : String // "right"
		, ?savenochange : Bool
		, ?selector : String
		, ?send : String
		, ?showbuttons : Dynamic
		, ?success : String->String->Void // (response, value)
		, ?toggle : String
		, ?type : String // "text"
		, ?unsavedclass : String
		, ?url : Dynamic
		, ?validate : String->String
		, ?value : Dynamic
	}) : Void untyped
	{
		return jq.editable(params);
	}
}