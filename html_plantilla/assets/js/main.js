/*
	Strata by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/

(function($) {

	var $window = $(window),
		$body = $('body'),
		$header = $('#header'),
		$footer = $('#footer'),
		$main = $('#main'),
		settings = {

			// Parallax background effect?
				parallax: true,

			// Parallax factor (lower = more intense, higher = less intense).
				parallaxFactor: 20

		};

	// Breakpoints.
		breakpoints({
			xlarge:  [ '1281px',  '1800px' ],
			large:   [ '981px',   '1280px' ],
			medium:  [ '737px',   '980px'  ],
			small:   [ '481px',   '736px'  ],
			xsmall:  [ null,      '480px'  ],
		});

	// Play initial animations on page load.
		$window.on('load', function() {
			window.setTimeout(function() {
				$body.removeClass('is-preload');
			}, 100);
		});

	// Touch?
		if (browser.mobile) {

			// Turn on touch mode.
				$body.addClass('is-touch');

			// Height fix (mostly for iOS).
				window.setTimeout(function() {
					$window.scrollTop($window.scrollTop() + 1);
				}, 0);

		}

	// Footer.
		breakpoints.on('<=medium', function() {
			$footer.insertAfter($main);
		});

		breakpoints.on('>medium', function() {
			$footer.appendTo($header);
		});

	// Header.

		// Parallax background.

			// Disable parallax on IE (smooth scrolling is jerky), and on mobile platforms (= better performance).
				if (browser.name == 'ie'
				||	browser.mobile)
					settings.parallax = false;

			if (settings.parallax) {

				breakpoints.on('<=medium', function() {

					$window.off('scroll.strata_parallax');
					$header.css('background-position', '');

				});

				breakpoints.on('>medium', function() {

					$header.css('background-position', 'left 0px');

					$window.on('scroll.strata_parallax', function() {
						$header.css('background-position', 'left ' + (-1 * (parseInt($window.scrollTop()) / settings.parallaxFactor)) + 'px');
					});

				});

				$window.on('load', function() {
					$window.triggerHandler('scroll');
				});

			}

	// Manejo del formulario de contacto
	$window.on('load', function() {
		console.log('Página cargada completamente');
		
		// Buscar el formulario específicamente en la sección three
		var $formulario = $('#three form');
		console.log('Formulario encontrado:', $formulario.length > 0);
		
		if ($formulario.length > 0) {
			$formulario.on('submit', function(e) {
				e.preventDefault();
				console.log('Formulario enviado');
				
				var nombre = $('#name').val().trim();
				var email = $('#email').val().trim();
				var mensaje = $('#message').val().trim();
				
				console.log('Nombre:', nombre);
				console.log('Email:', email);
				console.log('Mensaje:', mensaje);
				
				if(nombre !== '' && email !== '' && mensaje !== '') {
					console.log('Todos los campos llenos');
					
					// Mostrar mensaje de confirmación
					$('#mensaje-confirmacion').fadeIn(400);
					
					// Limpiar formulario
					$formulario[0].reset();
					
					// Ocultar mensaje después de 5 segundos
					setTimeout(function() {
						$('#mensaje-confirmacion').fadeOut(400);
					}, 5000);
					
				} else {
					console.log('Faltan campos');
					alert('Por favor, completa todos los campos del formulario.');
				}
			});

		} else {
			console.log('ERROR: No se encontró el formulario');
		}
	});

})(jQuery);