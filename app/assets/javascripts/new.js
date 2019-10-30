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

//   // 出品一式の機能
// $(window).on("turbolinks:load", function() {
//   var dropzone = $(".items-sell__imgs__dropzone__input");
//   var dropzone2 = $(".items-sell__imgs__dropzone2__input2");
//   var appendzone = $(".items-sell__imgs__dropzone2")
//   var input_area = $(".input-area");
//   var preview = $("#preview");
//   var preview2 = $("#preview2");
  
//   // 登録済画像と新規追加画像を全て格納する配列（ビュー用）
//   var images = [];
//   // 登録済画像データだけの配列（DB用）
//   var registered_images_ids =[]
//   // 新規追加画像データだけの配列（DB用）
//   var new_image_files = [];
  

//   // 登録済画像のプレビュー表示
//   gon.images.forEach(function(image, index){
//     var img = $('<div class="items-sell__imgs__dropzone__input"><div class="input-area"><img upload-image></div></div>');
//     console.log('aaa')
//     // カスタムデータ属性を付与
//     img.data("image", index)
    
//     var btn_wrapper = $('<div class="input_area"><a class="btn_edit">編集</a><a class="btn_delete">削除</a></div>');

//     // 画像に編集・削除ボタンをつける
//     img.append(btn_wrapper);

//     binary_data = gon.images_binary_datas[index]
    
//     // 表示するビューにバイナリーデータを付与
//     img.find("img").attr({
//       src: "data:image/jpeg;base64," + binary_data
//     });
    
//     // 登録済画像のビューをimagesに格納
//     images.push(img)
//     registered_images_ids.push(image.id)
//   })

//   // 画像が４枚以下のとき
//   if (images.length <= 4) {
//     $('#preview').empty();
//     $.each(images, function(index, image) {
//       image.data('image', index);
//       preview.append(image);
//     })
//     dropzone.css({
//       'width': `calc(100% - (20% * ${images.length}))`
//     })

//     // 画像が５枚のとき１段目の枠を消し、２段目の枠を出す
//   } else if (images.length == 5) {
//     $("#preview").empty();
//     $.each(images, function(index, image) {
//       image.data("image", index);
//       preview.append(image);
//     });
//     appendzone.css({
//       display: "block"
//     });
//     dropzone.css({
//       display: "none"
//     });
//     preview2.empty();

//     // 画像が６枚以上のとき
//   } else if (images.length >= 6) {
//     // １〜５枚目の画像を抽出
//     var pickup_images1 = images.slice(0, 5);

//     // １〜５枚目を１段目に表示
//     $('#preview').empty();
//     $.each(pickup_images1, function(index, image) {
//       image.data('image', index);
//       preview.append(image);
//     })

//     // ６枚目以降の画像を抽出
//     var pickup_images2 = images.slice(5);

//     // ６枚目以降を２段目に表示
//     $.each(pickup_images2, function(index, image) {
//       image.data('image', index + 5);
//       preview2.append(image);
//     })

//     dropzone.css({
//       'display': 'none'
//     })
//     appendzone.css({
//       'display': 'block'
//     })
//     dropzone2.css({
//       'display': 'block',
//       'width': `calc(100% - (20% * ${images.length - 5}))`
//     })

//     // 画像が１０枚になったら枠を消す
//     if (images.length == 10) {
//       dropzone2.css({
//         display: "none"
//       });
//     }
//   }

//   var new_image = $(
//     `<input multiple= "multiple" name="item_images[image][]" class="upload-image" data-image= ${images.length} type="file" id="upload-image">`
//   );
//   input_area.append(new_image);


//   // 画像を新しく追加する場合
//   $("#edit_item .item__img__dropzone, #edit_item .item__img__dropzone2").on("change", 'input[type= "file"].upload-image', function() {
//     var file = $(this).prop("files")[0];
//     new_image_files.push(file)
//     var reader = new FileReader();
//     var img = $(`<div class= "add_img"><div class="img_area"><img class="image"></div></div>`);

//     reader.onload = function(e) {
//       var btn_wrapper = $('<div class="btn_wrapper"><a class="btn_edit">編集</a><a class="btn_delete">削除</a></div>');

//       // 画像に編集・削除ボタンをつける
//       img.append(btn_wrapper);
//       img.find("img").attr({
//         src: e.target.result
//       });
//     };

//     reader.readAsDataURL(file);
//     images.push(img);

//     // 画像が４枚以下のとき
//     if (images.length <= 4) {
//       $('#preview').empty();
//       $.each(images, function(index, image) {
//         image.data('image', index);
//         preview.append(image);
//       })
//       dropzone.css({
//         'width': `calc(100% - (20% * ${images.length}))`
//       })

//       // 画像が５枚のとき１段目の枠を消し、２段目の枠を出す
//     } else if (images.length == 5) {
//       $("#preview").empty();
//       $.each(images, function(index, image) {
//         image.data("image", index);
//         preview.append(image);
//       });
//       appendzone.css({
//         display: "block"
//       });
//       dropzone.css({
//         display: "none"
//       });
//       preview2.empty();

//       // 画像が６枚以上のとき
//     } else if (images.length >= 6) {

//       // 配列から６枚目以降の画像を抽出
//       var pickup_images = images.slice(5);

//       $.each(pickup_images, function(index, image) {
//         image.data("image", index + 5);
//         preview2.append(image);
//         dropzone2.css({
//           width: `calc(100% - (20% * ${images.length - 5}))`
//         });
//       });

//       // 画像が１０枚になったら枠を消す
//       if (images.length == 10) {
//         dropzone2.css({
//           display: "none"
//         });
//       }
//     }

//     var new_image = $(
//       `<input multiple= "multiple" name="item_images[image][]" class="upload-image" data-image= ${images.length} type="file" id="upload-image">`
//     );
//     input_area.append(new_image);
//   });


//   // 削除ボタン
//   $("#edit_item .item__img__dropzone, #edit_item .item__img__dropzone2").on('click', '.btn_delete', function() {

//     // 削除ボタンを押した画像を取得
//     var target_image = $(this).parent().parent();

//     // 削除画像のdata-image番号を取得
//     var target_image_num = target_image.data('image');

//     // 対象の画像をビュー上で削除
//     target_image.remove();

//     // 対象の画像を削除した新たな配列を生成
//     images.splice(target_image_num, 1);

//     // target_image_numが登録済画像の数以下の場合は登録済画像データの配列から削除、それより大きい場合は新たに追加した画像データの配列から削除
//     if (target_image_num < registered_images_ids.length) {
//       registered_images_ids.splice(target_image_num, 1);
//     } else {
//       new_image_files.splice((target_image_num - registered_images_ids.length), 1);
//     }

//     if(images.length == 0) {
//       $('input[type= "file"].upload-image').attr({
//         'data-image': 0
//       })
//     }

//     // 削除後の配列の中身の数で条件分岐
//     // 画像が４枚以下のとき
//     if (images.length <= 4) {
//       $('#preview').empty();
//       $.each(images, function(index, image) {
//         image.data('image', index);
//         preview.append(image);
//       })
//       dropzone.css({
//         'width': `calc(100% - (20% * ${images.length}))`,
//         'display': 'block'
//       })
//       appendzone.css({
//         'display': 'none'
//       })

//     // 画像が５枚のとき１段目の枠を消し、２段目の枠を出す
//     } else if (images.length == 5) {
//       $('#preview').empty();
//       $.each(images, function(index, image) {
//         image.data('image', index);
//         preview.append(image);
//       })
//       appendzone.css({
//         'display': 'block',
//       })
//       dropzone2.css({
//         'width': '100%'
//       })
//       dropzone.css({
//         'display': 'none'
//       })
//       preview2.empty();

//     // 画像が６枚以上のとき
//     } else {
//       // １〜５枚目の画像を抽出
//       var pickup_images1 = images.slice(0, 5);

//       // １〜５枚目を１段目に表示
//       $('#preview').empty();
//       $.each(pickup_images1, function(index, image) {
//         image.data('image', index);
//         preview.append(image);
//       })

//       // ６枚目以降の画像を抽出
//       var pickup_images2 = images.slice(5);

//       // ６枚目以降を２段目に表示
//       $.each(pickup_images2, function(index, image) {
//         image.data('image', index + 5);
//         preview2.append(image);
//         dropzone2.css({
//           'display': 'block',
//           'width': `calc(100% - (20% * ${images.length - 5}))`
//         })
//       })
//     }
//   })


//   $('.edit_item').on('submit', function(e){
//     // 通常のsubmitイベントを止める
//     e.preventDefault();
//     // images以外のform情報をformDataに追加
//     var formData = new FormData($(this).get(0));

//     // 登録済画像が残っていない場合は便宜的に0を入れる
//     if (registered_images_ids.length == 0) {
//       formData.append("registered_images_ids[ids][]", 0)
//     // 登録済画像で、まだ残っている画像があればidをformDataに追加していく
//     } else {
//       registered_images_ids.forEach(function(registered_image){
//         formData.append("registered_images_ids[ids][]", registered_image)
//       });
//     }

//     // 新しく追加したimagesがない場合は便宜的に空の文字列を入れる
//     if (new_image_files.length == 0) {
//       formData.append("new_images[images][]", " ")
//     // 新しく追加したimagesがある場合はformDataに追加する
//     } else {
//       new_image_files.forEach(function(file){
//         formData.append("new_images[images][]", file)
//       });
//     }

//     $.ajax({
//       url:         '/items/' + gon.item.id,
//       type:        "PATCH",
//       data:        formData,
//       contentType: false,
//       processData: false,
//     })
//   });
// });


// $(function(){
//   $('.items-sell__price__right').on('input', function(){   //リアルタイムで表示したいのでinputを使う｡入力の度にイベントが発火するようになる｡
//     var data = $('.items-sell__price__right').val(); // val()でフォームのvalueを取得(数値)
//     var profit = Math.round(data * 0.9)  // 手数料計算を行う｡dataにかけているのが0.9なのは単に引きたい手数料が10%のため｡
//     var fee = (data - profit) // 入力した数値から計算結果(profit)を引く｡それが手数料となる｡
//     $('.items-sell__price__right__list2__last').html(fee) //  手数料の表示｡html()は追加ではなく､上書き｡入力値が変わる度に表示も変わるようにする｡
//     $('.items-sell__price__right__list2__last').prepend('¥') // 手数料の前に¥マークを付けたいので
//     $('.items-sell__price__right__list3__last').html(profit)
//     $('.items-sell__price__right__list3__last').prepend('¥')
//     $('#price').val(profit) // 計算結果を格納用フォームに追加｡もし､入力値を追加したいのなら､今回はdataを引数に持たせる｡
//     if(profit == '') {   // もし､計算結果が''なら表示も消す｡
//     $('.items-sell__price__right__list3__last').html('');
//     $('.items-sell__price__right__list2__last').html('');
//     }
//   })
// })

$(document).on('turbolinks:load',function() {
//   //モーダルを開く
//   $('.items-sell__exhibit__decide__window').click(function() {
//     $('.modalOverlay__modal').fadeIn();
//   })
//   console.log("ddd")
//   //モーダルの外側か閉じるをクリックでモーダルを閉じる
  $('.modalOverlay').click(function() {
    $('.modalOverlay').fadeOut();
  })
});