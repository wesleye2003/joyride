$(document).ready(function() {
  $('.start-form').on('submit', function(event){
    event.preventDefault();
    var form = $(this);
    var data = $(this).serialize();
    var response = $.post('/results', data);
    response.done(function(responseData){
      $('.start-form').remove();
      $('#content').prepend(responseData);
      var rides = parseInt($('.rides').text());
      var i = i || 0;
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
    var response = $.get('/donuts');
    response.done(function(responseData){
      $('.bruh').hide();
      $('.donuts').remove();
      $('.rick').remove();
      $('#content').prepend(responseData);
      var donuts = parseInt($('.donuts-ct').text());
      var x = x || 0;
      var donUpdater = setInterval(donutCount, 10);
      function donutCount(){
        if (x >= donuts){
          clearInterval(donUpdater);
          $('.donut-counter-value').text(donuts);
        };
        $('.donut-counter-value').text(x);
        x+= 11;
      };
    });
  });

  $('#content').on('click', '.result-link', function(event){
    event.preventDefault();
    var response = $.get('/results');
    response.done(function(){
      $('.donuts').remove();
      $('.rick').remove();
      $('.bruh').show();
    });
  });
});
