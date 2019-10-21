$(document).on('turbolinks:load',function() {
  $('.slider-for').slick({
    dots: true,
    adaptiveHeight: true,

    customPaging: function(slider, i) {
      var thumbSrc = $(slider.$slides[i]).find('img').attr('src');
      return '<img src="' + thumbSrc + '">';
      
    }
    
  });
  $( '.slider-for' ).on( 'mouseenter', '.slick-dots > li', function() {
    $( this ).click();
 });
});