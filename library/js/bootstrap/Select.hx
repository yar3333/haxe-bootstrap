package js.bootstrap;

class SelectOptionsBuilder
{
	public var options : Dynamic;
	
	public function new() options = {};
	
	function set(n:String, v:Dynamic, ?d:Dynamic) : SelectOptionsBuilder
	{
		untyped options[n] = v != null ? v : d;
		return this;
	}
	
	/**
	 * appends the select to a specific element or selector, e.g., container: 'body' | '.main-body'
	 */
	public inline function container(?v:String) return set("container", v, false);
	
	/**
	 * sets the format for the text displayed when selectedTextFormat is count or count > #. {0} is the selected amount. {1} is total available for selection
	 */
	public inline function countSelectedText(v='{0} of {1} selected') return set("countSelectedText", v);
	
	/**
	 * checks to see which has more room, above or below. 
	 * If the dropup has enough room to fully open normally, but there is more room above, 
	 * the dropup still opens normally. Otherwise, it becomes a dropup. 
	 * If dropupAuto is set to false, dropups must be called manually.
	 */
	public inline function dropupAuto(v=true) return set("dropupAuto", v);
	
	/**
	 * adds a header to the top of the menu; includes a close button by default
	 */
	public inline function header(?v:String) return set("header", v, false);

	/**
	 * removes disabled options and optgroups from the menu data-hide-disabled: true
	 */
	public inline function hideDisabled(v=false) return set("hideDisabled", v);

	/**
	 * specifies how the selection is displayed with a multiple select (see here
	 * 'values' | 'count' | 'count > #' (where # is an integer)
	 */
	public inline function selectedTextFormat(?v:String) return set("selectedTextFormat", v);
	
	/**
	 * when set to 'auto', the menu always opens up to show as many items as the window will allow without being cut off
	 * set to false to always show all items
	 * 'auto' | integer | false
	 */
	public inline function size(v:Dynamic='auto') return set("size", v);

	/**
	 * subtext associated with a selected option will be displayed in the button data-show-subtext: true
	 */
	public inline function showSubtext(v=false) return set("showSubtext", v);
	
	/**
	 * Display icon(s) associated with selected option(s) in the button. 
	 * If false, icons will not be displayed in the button.
	 */
	public inline function showIcon(v=true) return set("showIcon", v);
	
	/**
	 * Display custom HTML associated with selected option(s) in the button. 
	 * If false, the option value will be displayed instead.
	 */
	public inline function showContent(v=true) return set("showContent", v);
	
	/**
	 * apply a class to the button, see bootstrap buttons styles
	 */
	public inline function style(?v:String) return set("style", v);

	/**
	 * Set the default text for bootstrap-select
	 */
	public inline function title(?v:String) return set("title", v);

	/**
	 * auto automatically adjusts the width of the select to accommodate its widest option
	 * set the width of the select manually, e.g. 300px or 50%
	 * 'auto' | '#px' | '#%' | null (where # is an integer)
	 */
	public inline function width(?v:String) return set("width", v);
	
}

extern class SelectInstance
{
	private function selectpicker(method:Dynamic, ?p1:Dynamic, ?p1:Dynamic) : Dynamic;
	
	/**
	 * This is different to calling val() directly on the select element. 
	 * If you call val() on the element directly the bootstrap-select ui will not refresh (as the change event only fires from user interaction). 
	 * If you use val() directly, you will need to manually re-render the ui
	 */
	public inline function val(v:Dynamic) : Void selectpicker("val", v);
	
	/**
	 * This will select all items in a multiple select.
	 */
	public inline function selectAll() : Void selectpicker("selectAll");
	
	/**
	 * This will deselect all items in a multiple select.
	 */
	public inline function deselectAll() : Void selectpicker("deselectAll");
	
	/**
	 * ou can force a re-render of the bootstrap-select ui with the render method. 
	 * This is useful if you programatically change any underlying values that affect the layout of the element.
	 */
	public inline function render() : Void selectpicker("render");
	
	/**
	 * Enable mobile scrolling by calling $('.selectpicker').selectpicker('mobile').
	 * The method for detecting the browser is left up to the user. 
	 * This enables the device's native menu for select menus.
	 */
	public inline function mobile() : Void selectpicker("mobile");
	
	public inline function setClass(v:String) : Void selectpicker("setStyle", v);
	public inline function addClass(v:String) : Void selectpicker("setStyle", v, "add");
	public inline function removeClass(v:String) : Void selectpicker("setStyle", v, "remove");
	
	/**
	 * To programmatically update a select with JavaScript, first manipulate the select, 
	 * then use the refresh method to update the UI to match the new state. 
	 * This is necessary when removing or adding options, or when disabling/enabling a select via JavaScript.
	 */
	public inline function refresh() : Void selectpicker("refresh");	
}

class Select
{
	public static function selectpicker(jq:js.JQuery, ?options:Dynamic) : SelectInstance untyped
	{
		if (options != null) jq.selectpicker(options);
		return jq;
	}
}