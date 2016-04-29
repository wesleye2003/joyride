$(document).ready(function() {

  var countDatShit = function() {
    var value = parseInt($('.data').text());
    console.log(value);
    var counter = 0;
    var countUpdater = setInterval(itemCounter, 4);
    function itemCounter(){
      if (counter >= value){
        clearInterval(countUpdater);
        counter = value;
      };
      $('.counter-value').text(counter);
      counter+=  Math.round(value*.001);
    };
  };

  $('.start-form').on('submit', function(event){
    event.preventDefault();
    var form = $(this);
    var data = $(this).serialize();
    var response = $.post('/results', data);
    response.done(function(responseData){
      $('.start-form').remove();
      $('#content').prepend(responseData);
      countDatShit();
    });
  });


  $('#content').on('click','.result-link', function(event){
    event.preventDefault();
    var link = $(this).attr('href');
    var response = $.get(link);
    response.done(function(responseData){
      $('.results').remove();
      $('.rick').remove();
      $('#content').append(responseData);
      countDatShit();
    });
  });


  $('#content').on('click', '.rick-link', function(event){
    event.preventDefault();
    var response = $.get('/rickroll');
    response.done(function(responseData){
      $('.donuts').remove();
      $('.rick').remove();
      $('.bruh').hide();
      $('#content').append(responseData);
    });
  });
});
