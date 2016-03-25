// User Sign Up Form

$(document).ready(function(){
  $('#user_github_url').hide();
  $('#user_linked_in_url').hide();

  $('#user_status').on('click', function() {
    $('#user_github_url').toggle();
    $('#user_linked_in_url').toggle();
  });
})
