$(document).on('turbolinks:load',function() {
  //モーダルを開く
  $('.modalBtn').click(function() {
    $('.overlay, .modal, .modal-inner').fadeIn();
  })
  //モーダルの外側か閉じるをクリックでモーダルを閉じる
  $('.overlay, .close').click(function() {
    $('.overlay, .modal, .modal-inner').fadeOut();
  })
});