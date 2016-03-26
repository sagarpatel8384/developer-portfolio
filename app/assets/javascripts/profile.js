$(document).ready(function() {
  // Show Github Form Field if Developer or Designer
  $('#github-form-field').hide();
  $('#profile_status').on('click', function() {
    $('#github-form-field').toggle();
  })
})
