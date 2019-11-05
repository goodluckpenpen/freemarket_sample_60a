$(function(){
  //画像ファイルプレビュー表示のイベント追加 fileを選択時に発火するイベントを登録
  $('form').on('change', 'input[type="file"]', function(e) {
    var file = e.target.files[0],
        reader = new FileReader(),
        $preview = $("#preview");
        t = this;

    // 画像ファイル以外の場合は何もしない
    if(file.type.indexOf("image") < 0){
      return false;
    }

    // ファイル読み込みが完了した際のイベント登録
    reader.onload = (function(file) {
      return function(e) {
        //既存のプレビューを削除
        $preview.empty();
        // .prevewの領域の中にロードした画像を表示するimageタグを追加
        $preview.append($('<img>').attr({
                  src: e.target.result,
                  width: "150px",
                  class: "preview",
                  title: file.name
              }));
      };
    })(file);

    reader.readAsDataURL(file);
  });
});



$(function(){
  $('.items-sell__price__right').on('input', function(){   //リアルタイムで表示したいのでinputを使う｡入力の度にイベントが発火するようになる｡
    var data = $('.items-sell__price__right__list1__plices__example').val(); // val()でフォームのvalueを取得(数値)
    var profit = Math.round(data * 0.9)  // 手数料計算を行う｡dataにかけているのが0.9なのは単に引きたい手数料が10%のため｡
    var fee = (data - profit) // 入力した数値から計算結果(profit)を引く｡それが手数料となる｡
    $('.items-sell__price__right__list2__last').html(fee) //  手数料の表示｡html()は追加ではなく､上書き｡入力値が変わる度に表示も変わるようにする｡
    $('.items-sell__price__right__list2__last').prepend('¥') // 手数料の前に¥マークを付けたいので
    $('.items-sell__price__right__list3__last').html(profit)
    $('.items-sell__price__right__list3__last').prepend('¥')
    $('#price').val(profit) // 計算結果を格納用フォームに追加｡もし､入力値を追加したいのなら､今回はdataを引数に持たせる｡
    if(profit == '') {   // もし､計算結果が''なら表示も消す｡
    $('.items-sell__price__right__list3__last').html('');
    $('.items-sell__price__right__list2__last').html('');
    }
  })
})

$(document).on('turbolinks:load',function() {
  //モーダルを開く
  $('.items-sell__exhibit__decide__window').click(function() {
    $('.modalOverlay__modal').fadeIn('.modalOverlay');
  })
  //モーダルの外側か閉じるをクリックでモーダルを閉じる
  $('.modalOverlay').click(function() {
    $('.modalOverlay').fadeOut('.modalOverlay');
  })          
});