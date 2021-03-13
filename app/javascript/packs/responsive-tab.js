

;(function ($) {
	'use strict';

	var TAB = {

		wrapper: '.coursetabs',

    init: function() {
      var _this = this;
			_this.reFlow();

      $(window).on('resize', function() {
        _this.reFlow();
      });
		},

		reFlow: function() {
			var tab_wrapper = $(this.wrapper);

			var wrapper_width = tab_wrapper.width(),
				dropdown_width = tab_wrapper.find("li.dropdown").width(),
				width_sum = 0;

			tab_wrapper.find('>li:not(li.dropdown)').each(function(){
				width_sum += $(this).outerWidth(true);
				if (width_sum + dropdown_width + 30 > wrapper_width)
					$(this).hide();
				else
					$(this).show();
			});

			var hidden_lists = tab_wrapper.find('>li:not(li.dropdown):not(:visible)');

			if (hidden_lists.length > 0) {
				$("li.dropdown").show();
			} else {
				$("li.dropdown").hide();
			}

			tab_wrapper.find('ul.dropdown-menu').html(hidden_lists.clone().show());
		}
	};

	$(document).ready(function() {
    if($('.nav-tabs').length){
      TAB.init();
    }
	});


})(jQuery, this);
