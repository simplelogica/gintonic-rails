(function($) {

  $.gTabs = function(el) {
    var plugin = this,
        $el = $(el);

    this.$el = $el;

    $el.data('g-tabs', plugin);


    plugin.init = function() {
      var $active_el = $el.find('.g-tab-nav.active');

      if ($active_el.length === 1) {
        plugin.activate_tab($active_el);
      } else {
        plugin.activate_tag($el.find('.g-tab-nav').first());
      }

      $el.on('click', '.g-tab-nav', function() {
        plugin.activate_tab($(this));
      });
    };

    plugin.activate_tab = function($nav) {
      var $target = (typeof $nav.attr('data-g-tab') !== 'undefined') ? $($nav.attr('data-g-tab')) : $($nav.attr('href')),
          $fk_selects = $target.find('.has-fk-select');

      // Activate nav
      $nav.addClass('active')
          .siblings('.g-tab-nav').removeClass('active');

      // Activate element
      $target.addClass('active')
             .siblings('.g-tab').removeClass('active');

      if ($fk_selects.length > 0) {
        $fk_selects.each(function() {
          formikation.updateSelectWH($(this));
        });
      }
    };

    plugin.init();
  };



  $.fn.gTabs = function(options) {
    return this.each(function() {
      (new $.gTabs(this));
    });
  };
})(jQuery);
