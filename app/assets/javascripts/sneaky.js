$(document).ready(function(){ 
  $('#username').on('keyup', () => {
    document.cookie = $('#username').val()
  })

 });