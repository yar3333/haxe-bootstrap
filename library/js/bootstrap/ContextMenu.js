(function($) {
	"use strict";

	var ContextMenu = function(elements, options)
	{
		this.$elements = $(elements)
		this.options = options
		this.before = this.options.before || this.before
		this.onItem = this.options.onItem || this.onItem
		if (this.options.target) this.$elements.attr('data-target', this.options.target)
		this.listen()
	}
	
	ContextMenu.prototype =
	{
		constructor: ContextMenu,
		
		show: function(e)
		{
			this.clearMenus();
			
			var $this = $(this);
			var $contextmenu;
			
			if ($this.is('.disabled, :disabled')) return;
			
			var evt = $.Event('context');
			if (!this.before(this, e, $(e.currentTarget))) return;
			this.$elements.trigger(evt);
			
			var $menu = this.getMenu();
			
			$menu.attr('style', '')
				.css(this.getPosition(e, $menu))
				.data('_context_this_ref', this)
				.addClass('open');
			return false;
		},
		
		close: function()
		{
			this.getMenu().removeClass('open');
		},
		
		before: function(t, e)
		{
			return true;
		},
		
		onItem: function(t, e, context)
		{
			return true;
		},
		
		listen: function()
		{
			var self = this;
			
			this.$elements.on('contextmenu.context.data-api', $.proxy(this.show, this));
			$('html').on('click.context.data-api', $.proxy(this.close, this));
			
			var $target = $(this.$elements.attr('data-target'));
			$target.addClass("__contextmenu");
			
			$target.on('click.context.data-api', function(e)
			{
				if ($(this).data('_context_this_ref') == self)
				{
					self.onItem(this, e, $(e.target));
				}
			});
			
			$('html').on('click.context.data-api', function()
			{
				$target.removeClass('open');
			});
		},
		
		destroy: function()
		{
			this.$elements.off('.context.data-api').removeData('context');
			$('html').off('.context.data-api');
			$(this.$elements.attr('data-target')).off('.context.data-api');
		},
		
		getMenu: function()
		{
			var selector = this.$elements.attr('data-target');
			if (!selector)
			{
				selector = this.$elements.attr('href')
				selector = selector && selector.replace(/.*(?=#[^\s]*$)/, '') //strip for ie7
			}
			return $(selector);
		},
		
		getPosition: function(e, $menu)
		{
			var mouseX = e.clientX;
			var mouseY = e.clientY;
			var boundsX = $(window).width();
			var boundsY = $(window).height();
			var menuWidth = $menu.find('.dropdown-menu').outerWidth();
			var menuHeight = $menu.find('.dropdown-menu').outerHeight();
			
			return {
				position: "fixed",
				left: (mouseX + menuWidth > boundsX) && ((mouseX - menuWidth) > 0) ? mouseX - menuWidth : mouseX,
				top: mouseY + menuHeight > boundsY ? mouseY - menuHeight : mouseY
			};
		},
		
		clearMenus: function()
		{
			$('.__contextmenu').each(function()
			{
				$(this).removeClass('open');
			});
		}
	}
	
	$.fn.contextmenu = function(option, e)
	{
		var $this = this;
		return (function()
		{
			var data = $this.data('context');
			var options = typeof option == 'object' && option;
			if (!data) $this.data('context', data = new ContextMenu($this, options));
			if (typeof option == 'string') return data[option].call(data, e);
			return data;
		})();
	}
	
	$.fn.contextmenu.Constructor = ContextMenu;
	
	$(document).on('contextmenu.context.data-api', '[data-toggle=context]', function(e)
	{
		$(this).contextmenu('show', e);
		e.preventDefault();
	});

})(window.jQuery);
