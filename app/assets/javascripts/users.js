$(document).ready(function(){
  var reservationAuthenticityToken = $('.reservation__modal--form #authenticity_token').val();
  $(document).on('ajax:success','#reservation__modal--form', function(e, data, status, xhr){
    console.log('DONE');
  }).on('ajax:error', '#reservation__modal--form' ,function(e, xhr, status, error){
    console.log('FAIL');
  });

  $("#modal").iziModal();
  $('.landing__cta-btn , .hours__day').on('click', function(){
    $('#modal').iziModal('open');
  })

  var authenticityToken = $('#authenticity_token').val();
  $('.collection__product--form').on('submit', function(e){
    e.stopPropagation();
    e.preventDefault();
    var that = $(this);
    var id = that.data('id');
    var name = $('#product__name').val();
    var price = $('#product__price').val();
    $.post('/products', {
      authneticity_token: authenticityToken,
      'product[collection_id]': id,
      'product[name]': name,
      'product[price]': price,

    }).done(function(res){
      console.log('good');
    }).fail(function(res){
      console.log(res);
      console.log('no bueno');
    })
    return false;
  })
})
