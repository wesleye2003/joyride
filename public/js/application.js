$(document).ready(function() {
  $('.start-form').on('submit', function(event){
    event.preventDefault();
    var form = $(this);
    var data = $(this).serialize();
    var response = $.post('/results', data);
    response.done(function(responseData){
      $('.bruh').remove();
      $('.start-form').hide();
      $('#content').prepend(responseData);
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

  $('#content').on('click','.donut-link', function(event){
    event.preventDefault();
    var div = $(this);
    var response = $.get('/donuts');
    response.done(function(responseData){
      $('.donuts').remove();
      $('.bruh').hide();
      $('#content').prepend(responseData);
      var donuts = parseInt($('.donuts-ct').text());
      var i = 0;
      var updater = setInterval(changeCount, 4);
      function changeCount(){
        if (i >= donuts){
          clearInterval(updater);
          $('.donut-counter-value').text(donuts);
        };
        $('.donut-counter-value').text(i);
        i+= 101;
      };
    });
  });
});
