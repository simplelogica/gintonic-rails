(function($) {

  $.gTabs = function(el) {
    var plugin = this,
        $menu = $(el);

    this.$el = $menu;

    $menu.data('g-tabs', plugin);


    plugin.init = function() {
      var $active_el = $menu.find('.g-tab-nav.active');

      if ($active_el.length === 1) {
        plugin.activate_tab($active_el);
      } else {
        plugin.activate_tag($menu.find('.g-tab-nav').first());
      }

      $menu.on('click', '.g-tab-nav', function(e) {
        e.preventDefault();
        plugin.activate_tab($(this));
      });
    };

    plugin.activate_tab = function($nav) {
      var $target = (typeof $nav.attr('data-g-tab') !== 'undefined') ? $($nav.attr('data-g-tab')) : $($nav.attr('href')),
          $fk_selects = $target.find('.has-fk-select');

      // Activate nav
      $menu.find('.g-tab-nav').removeClass('active');
      $nav.addClass('active');

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
