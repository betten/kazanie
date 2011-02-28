$(function() {
  $('.delete').click(function() {
    if(!confirm($(this).attr('data-confirm'))) {
      return false;
    }
  });
});
