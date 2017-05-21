$(() => {
	const navBtn = $('#nav');
	const body = $('body');
	navBtn.on('click', () => {
		$(body).toggleClass('nav_open');
	});

	$(body).keyup((e) => {
		if (e.keyCode === 27) {
			body.removeClass('nav_open');
		}
	});
});
