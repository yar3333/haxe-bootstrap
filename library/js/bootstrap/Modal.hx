package js.bootstrap;

typedef ModalOptions =
{
	?backdrop 	: Bool,
	?keyboard 	: Bool,
	?show 		: Bool
}

class Modal
{
	public static inline function modal(jq:js.JQuery, ?conf:ModalOptions) : js.JQuery 
	{
		return untyped jq.modal(conf);
	}
	
	public static inline function modalToggle(jq:js.JQuery) : js.JQuery
	{
		return untyped jq.modal("toggle");
	}
		
	public static inline function modalShow(jq:js.JQuery ) : js.JQuery
	{
		return untyped jq.modal("show");
	}
	
	public static inline function modalHide(jq:js.JQuery) : js.JQuery
	{
		return untyped jq.modal("hide");
	}
}