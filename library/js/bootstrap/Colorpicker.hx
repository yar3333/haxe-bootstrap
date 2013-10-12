package js.bootstrap;

import js.JQuery;

extern class ColorpickerInstance
{
	/**
	 * Set a new color. The value is parsed and tries to do a quess on the format.
	 */
	function setColor(value:Dynamic) : Void;
	
	/**
	 * Set the HUE with a value between 0 and 1.
	 */
	function setHue(value:Float) : Float;
	
	/**
	 * Set the saturation with a value between 0 and 1.
	 */
	function setSaturation(value:Float) : Void;
	
	/**
	 * Set the lightness with a value between 0 and 1.
	 */
	function setLightness(value:Float) : Void;
	
	/**
	 * Set the transparency with a value between 0 and 1.
	 */
	function setAlpha(value:Float) : Void;
	
	/**
	 * Returns a hash with red, green, blue and alpha.
	 */
	function toRGB() : { red:Float, green:Float, blue:Float };
	
	/**
	 * Returns a string with HEX format for the current color.
	 */
	function toHex() : String;
	
	/**
	 * Returns a hash with HSLA values.
	 */
	function toHSL() : { h:Float, s:Float, l:Float, a:Float };
}

class Colorpicker
{
	/**
	 * This event fires immediately when the color picker is created.
	 */
	public static inline var CREATE = "create";
	
	/**
	 * This event fires immediately when the color picker is displayed.
	 */
	public static inline var SHOW_PICKER = "showPicker";
	
	/**
	 * This event fires immediately when the color picker is displayed.
	 */
	public static inline var HIDE_PICKER = "hidePicker";
	
	/**
	 * This event is fired when the color is changed.
	 */
	public static inline var CHANGE_COLOR = "changeColor";
	
	/**
	 * This event fires immediately when the color picker is destroyed.
	 */
	public static inline var DESTROY = "destroy";
	
	/**
	 * Initializes an colorpicker.
	 * Format: hex, rgb, rgba.
	 */
	public static inline function colorpicker(jq:js.JQuery, ?options :
	{ 
		  ?format: String
	}
	) : JQuery untyped
	{
		return jq.colorpicker(options);
	}
		
	/**
	 * Show the color picker.
	 */
	public static inline function colorpickerShow(jq:js.JQuery) untyped jq.colorpicker('show');

	/**
	 * Refreshes the widget colors (this is done automatically).
	 */
	public static inline function colorpickerUpdate(jq:js.JQuery) untyped jq.colorpicker('update');

	/**
	 * Hide the color picker.
	 */
	public static inline function colorpickerHide(jq:js.JQuery) untyped jq.colorpicker('hide');

	/**
	 * Updates the color picker's position relative to the element.
	 */
	public static inline function colorpickerPlace(jq:js.JQuery) untyped jq.colorpicker('place');

	/**
	 * Destroys the colorpicker widget and unbind all .colorpicker events from the element and component.
	 */
	public static inline function colorpickerDestroy(jq:js.JQuery) untyped jq.colorpicker('destroy');

	/**
	 * Set a new value for the color picker (also for the input or component value). Triggers 'changeColor' event.
	 */
	public static inline function colorpickerSetValue(jq:js.JQuery, value:Dynamic) untyped jq.colorpicker('setValue', value);
}