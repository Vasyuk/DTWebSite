$(function(){
  $('a[href^="#"]').click(function(){
  var target = $(this).attr('href');
  $('html, body').animate({scrollTop: $(target).offset().top}, 2000);//800 - длительность скроллинга в мс
  return false;
  });
});
