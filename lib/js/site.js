
+function($) {
	$('.header form')
		.on('focusin', function() {
			$('.header button').show();
		})
		.on('focusoutside', function() {
			$('.header button').hide();
		});
}(jQuery);
