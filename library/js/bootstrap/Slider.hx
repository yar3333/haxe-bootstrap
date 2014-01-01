package js.bootstrap;

class Slider
{
	public static inline function slider(jq:js.JQuery, ?params :
	{ 
		  ?id : String // set the id of the slider element when it's created
		, ?min : Float // minimum possible value
		, ?max : Float // maximum possible value
		, ?step : Float // increment step
		, ?orientation : String // set the orientation. Accepts 'vertical' or 'horizontal'
		, ?value : Float // initial value. Use array to have a range slider.
		, ?selection : String // selection placement. Accepts: 'before', 'after' or 'none'. In case of a range slider, the selection will be placed between the handles
		, ?tooltip : String // whether to show the tooltip on drag, hide the tooltip, or always show the tooltip. Accepts: 'show', 'hide', or 'always'
		, ?handle : String // handle shape. Accepts: 'round', 'square' or 'triangle'
		, ?reversed : Bool // whether or not the slider should be reversed
		, ?enabled : Bool // whether or not the slider is initially enabled
		, ?formater : Float->String // formatter callback. Return the value wanted to be displayed in the tooltip
	}
	) : js.JQuery untyped
	{
		return jq.slider(params);
	}
	
	public static inline function sliderEnable(jq:js.JQuery) : Void
	{
		untyped jq.slider("enable");
	}
		
	public static inline function sliderDisable(jq:js.JQuery) : Void
	{
		untyped jq.slider("disable");
	}
	
	public static inline function sliderGetValue(jq:js.JQuery) : Float
	{
		return untyped jq.slider("getValue");
	}
	
	public static inline function sliderSetValue(jq:js.JQuery, v:Float) : Void
	{
		untyped jq.slider("setValue", v);
	}
	
	public static inline function sliderDestroy(jq:js.JQuery) : Void
	{
		untyped jq.slider("destroy");
	}	
	
	public static inline function sliderToggle(jq:js.JQuery) : Void
	{
		untyped jq.slider("toggle");
	}
	
	public static inline function sliderIsEnabled(jq:js.JQuery) : Bool
	{
		return untyped jq.slider("isEnabled");
	}
}