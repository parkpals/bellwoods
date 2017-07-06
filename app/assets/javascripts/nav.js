$(function() {
  const $body = $('body');
  const $header = $('header');
  const $navBtn = $('#nav');
  $navBtn.on('click', function() {
		$header.toggleClass('nav_open');
	});

	$body.keyup(function(e) {
		if (e.keyCode === 27) {
			$header.removeClass('nav_open');
		}
	});
});
