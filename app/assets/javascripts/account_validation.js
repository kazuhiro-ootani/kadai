$(document).on('turbolinks:load', function(){


$('#title-empty').text('タイトルが空です');
$('#content-empty').text('本文が空です');
$('#task_submit').attr('disabled','disabled');


$('#task_title,#task_content').on('keyup', function() {

      var title = $('#task_title').val();
      if (title !== ""){
        $('#title-empty').empty();
      }
      else {
        $('#title-empty').text('タイトルが空です');
      };

      var content = $('#task_content').val();
      if (content !== ""){
        $('#content-empty').empty();
      }
      else {
        $('#content-empty').text('本文が空です');
      };

      if (title && content !== ""){
        $('#task_submit').removeAttr('disabled');
      }
      else {
        $('#task_submit').attr('disabled','disabled');
      };
});
});
