// User Sign Up Form
$(document).ready(function(){
  // Dynamically update profile URL on username input
  $('#user_username').on('keyup', function() {
    var username = $('#user_username').val();
    $('#username-url > span').text(username);
  })
})
