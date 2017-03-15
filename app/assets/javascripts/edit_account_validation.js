$(document).on('turbolinks:load', function(){

$('.edit-title-form,.edit-content-form').on('keyup', function() {

      var title = $('.edit-title-form').val();
      if (title !== ""){
        $('.edit-title-empty').empty();
      }
      else {
        $('.edit-title-empty').text('タイトルが空です');
      };

      var content = $('.edit-content-form').val();
      if (content !== ""){
        $('.edit-content-empty').empty();
      }
      else {
        $('.edit-content-empty').text('本文が空です');
      };

      if (title && content !== ""){
        $('.edit-task_submit').removeAttr('disabled');
      }
      else {
        $('.edit-task_submit').attr('disabled','disabled');
      };
});
});
