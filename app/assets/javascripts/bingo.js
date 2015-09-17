$(document).ready(function(){
  var $SIZE = 7;
  var $LEN = $(window).width()/$SIZE;
  $('.cell').boxfit().width($LEN).height($LEN);
  $('.cell').on('click', function(){
    $('.cell').removeClass('active');
    $(this).addClass('active');
    $('#cell_number').val($(this).data('target'));
  });
});