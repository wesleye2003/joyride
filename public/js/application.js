$(document).ready(function() {
  $('.start-form').on('submit', function(event){
    event.preventDefault();
    var form = $(this);
    var data = $(this).serialize();
    var response = $.post('/results', data);
    response.done(function(responseData){
      $('.bruh').hide();
      $('#content').append(responseData);
      var rides = parseInt($('.rides').text());
      var i = 0;
      var updater = setInterval(changeCount, 4);
      function changeCount(){
        if (i >= rides){
          clearInterval(updater);
          $('.counter-value').text(rides);
        };
        $('.counter-value').text(i);
        i+= 10101;
      };
    });
  });
});
