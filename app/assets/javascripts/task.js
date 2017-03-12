$(function(){
  $('.task-complete').on('click', function() {
    if(!confirm('本当によろしいですか？')) {
    return false;
    };
  });
});
