(function($) {
  
  $.fn.zebrify = function() {
    
    return this.each(function(index) {
      $(this).removeClass('zebra');
      if(index % 2 === 1) {
        $(this).addClass('zebra');
      }
    });

  };

  $.fn.sortify = function(options) {

    var settings = {
      items: '.record',
    };

    return this.each(function() {
      
      $.extend(settings, options);

      $(this).sortable({
        axis: 'y',
        items: settings.items,
        opacity: 0.5,
        stop: function() {
          $(this).find(settings.items).zebrify();
          var order = $(this).find(settings.items).map(function(i, e) {
            return $(e).attr('id');
          });

          $.ajax({
            url: $(this).attr('url'),
            type: 'post',
            data: {
              order: order
            }
          }); // end ajax
        }
      });

    });

  };

})(jQuery);

$(function() {
  $('.delete').click(function() {
    if(!confirm($(this).attr('data-confirm'))) {
      return false;
    }
  });

  $('.table .record').zebrify();

  $('.sortable').sortify();
});
