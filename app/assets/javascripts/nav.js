$(() => {
	const $body = $('body');
	const $header = $('header');
	const $navBtn = $('#nav');
	$navBtn.on('click', () => {
		$('header').toggleClass('nav_open');
	});

	$body.keyup((e) => {
		if (e.keyCode === 27) {
			$header.removeClass('nav_open');
		}
	});
});
