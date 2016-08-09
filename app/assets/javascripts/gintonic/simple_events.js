$(document)

  // Toggle show or slide target element
  .on('click', '[data-show], [data-slide]', function(e) {
    var $el = $(this),
        $target = $($el.attr('href'));

    e.preventDefault();
    if (typeof $el.attr('data-show') !== 'undefined') {
      $target.toggle();
    } else {
      $target.slideToggle('fast');
    }
    $el.toggleClass('active');
  })

  // If data-show or data-slide target has data-out, close it on click outside element
  .mouseup(function (e) {
    var $container = $('[data-out]:visible'),
        $trigger = $('[href="#'+$container.attr('id')+'"]');

    if (!$container.is(e.target) // if the target of the click isn't the container...
        && !$trigger.is(e.target) && !$trigger.is($(e.target).closest('[data-show]'))
        && $container.has(e.target).length === 0) // ... nor a descendant of the container
    {
      if (typeof $trigger.attr('data-show') !== 'undefined') {
        $container.toggle();
      } else {
        $container.slideToggle('fast');
      }
      $trigger.toggleClass('active');
    }
  })

  // Smooth scroll
  .on('click', '[data-go]', function(e) {
    var $target = $($(this).attr('href')),
        offset = $target.offset().top;
    e.preventDefault();

    $('html,body').animate({scrollTop: offset}, 500);
  })

  // Auto submit forms on change or blur
  .on('change, blur', '.autoform', function() {
    $(this).submit();
  });
