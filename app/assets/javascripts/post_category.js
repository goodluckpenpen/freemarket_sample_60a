$(document).on('turbolinks:load',function(){
  
  var add_box = $(".items-sell__details__right__category");
  var add_del = $(".items-sell__delivery__right__burden");
  
  function appendSelect(childNum){
    if(childNum == 1){
      var select_id = `child-form`
      var select_class = `child-frame`
    } else if(childNum == 2) {
      var select_id = `granchild-form`
      var select_class = `granchild-frame`
    } 
    var html = 
    `<div class="items-sell__details__right__category__frame ${select_class}">
      <i>
       <i class="fa fa-angle-down fa-2x"></i>
      </i>
      <select class="items-sell__details__right__category__frame__main" id="${select_id}">
      <option value="">---</option>
     </div>`
    add_box.append(html)
  }
  
  function afterSelect(childNum){
   
    var html = 
     `<div class="items-sell__details__right__size">
        <label class="items-sell__details__right__size__head">
          サイズ
          <span class="items-sell__details__right__size__head__required">
            必須
          </span>
        </label>
        <div class="items-sell__details__right__size__frame size-frame">
          <i>
            <i class="fa fa-angle-down fa-2x"></i>
          </i>
          <select class="items-sell__details__right__size__frame__main" id="size-form" name="item[size_id]">
            <option value="">---</option>
          </select>
        </div>
      </div>`
     +
     `<div class="items-sell__details__right__brand">
        <label class="items-sell__details__right__brand__head">
          ブランド
          <span class="items-sell__details__right__brand__head__required">
            任意
          </span>
        </label>
        <div class="items-sell__details__right__brand__frame brand-frame">
          <i>
            <i class="fa fa-angle-down fa-2x"></i>
          </i>
          <select class="items-sell__details__right__brand__frame__main" id="brand-form" name="item[brand_id]">
            <option value="">---</option>
            <option value="1">シャネル</option>
            <option value="2">ナイキ</option>
            <option value="3">ルイ　ヴィトン</option>
            <option value="4">シュプリーム</option>
            <option value="5">アディダス</option>
          </select>
        </div>
      </div>`
    add_box.after(html)
  }

  function afterDeliver(childNum){
    var html = 
     `<div class="items-sell__delivery__right__method">
        <label class="items-sell__delivery__right__method__head">
          配送の方法
          <span class="items-sell__delivery__right__method__head__required">
            必須
          </span>
        </label>
        <div class="items-sell__delivery__right__method__frame">
            <i>
              <i class="fa fa-angle-down fa-2x"></i>
            </i>
            <select class="items-sell__delivery__right__method__frame__main" id="delivery_method-form" name="item[delivery_method_id]">
              <option value="">---</option>
            </select>
        </div>
     </div>`
    add_del.after(html)
  }

  function afterMethod(childNum){
    var html = 
     `<div class="items-sell__delivery__right__method">
        <label class="items-sell__delivery__right__method__head">
          配送の方法
          <span class="items-sell__delivery__right__method__head__required">
            必須
          </span>
        </label>
        <div class="items-sell__delivery__right__method__frame">
            <i>
              <i class="fa fa-angle-down fa-2x"></i>
            </i>
            <select class="items-sell__delivery__right__method__frame__main" id="delivery_method-form" name="item[delivery_method_id]">
              <option value="">---</option>
              <option value="1">未定</option>
              <option value="2">クロネコヤマト</option>
              <option value="9">ゆうパック</option>
              <option value="4">ゆうメール</option>
            </select>
        </div>
     </div>`
    add_del.after(html)
  }


  function appendCat(catOption,catNum){
    if(catNum == 1) {
      var appendId = $("#child-form")
    } else if (catNum == 2){
      var appendId = $("#granchild-form")
    } else if (catNum == 3){
      var appendId = $("#size-form")
    } else if (catNum == 4){
      var appendId = $(".items-sell__delivery__right__method__frame__main")
    }
    appendId.append(
      $("<option>")
        .val($(catOption).attr('id'))
        .text($(catOption).attr('name'))
        .text($(catOption).attr('size'))
        .text($(catOption).attr('method'))
    )
  }

  $("#parent-form").on("change",function(){
    l_cat = $(this).val()
    $("#child-form,#granchild-form,.child-frame,.granchild-frame").remove()

    $.ajax({
      url: '/items/search',
      type: "GET",
      data: {l_cat: l_cat},
      dataType: 'json'
    })

    .done(function(child){
      var childNum = 1
      appendSelect(childNum)
      child.forEach(function(child){
        appendCat(child,childNum)
      })
    })
  })

  $(document).on('change', "#child-form", function() {
    m_cat = $(this).val()
    $("#granchild-form,.granchild-frame").remove()

    $.ajax({
      url: '/items/search',
      type: "GET",
      data: {m_cat: m_cat},
      dataType: 'json'
    })

    .done(function(granchild) {
      var childNum = 2
      appendSelect(childNum)
      granchild.forEach(function(granchild) {
        appendCat(granchild, childNum)
      })
    })
  })

  
    $(document).on('change', "#granchild-form", function(){
      if($("#size-form").length){
        return false;
      } else {
      size = $(this).val()
      $("#size-form,.size-frame,.items-sell__details__right__size,.items-sell__details__right__brand").remove()
    
      $.ajax({
        url: '/items/search',
        type: "GET",
        data: {size: size},
        dataType: 'json'
      })

      .done(function(size) {
        var childNum = 3
        afterSelect(childNum)
        size.forEach(function(size) {
          appendCat(size, childNum)
          
        })
      })
      } 
    })
  

    $("#deliver-form").on("change",function(){
      deliver = $(this).val()
      if(deliver == 1) {
        $(".items-sell__delivery__right__method").remove()
    
        $.ajax({
          url: '/items/search',
          type: "GET",
          data: {deliver: deliver},
          dataType: 'json'
        })
    
        .done(function(del){
          var childNum = 4
          console.log(del)
          afterDeliver(childNum)
          del.forEach(function(del){
            appendCat(del,childNum)
          })
        })
      } else if(deliver == 2) {
        $(".items-sell__delivery__right__method").remove()
    
        $.ajax({
          url: '/items/search',
          type: "GET",
          data: {deliver: deliver},
          dataType: 'json'
        })
    
        .done(function(del){
          var childNum = 4
          console.log(del)
          afterMethod(childNum)
         
        })
      } else {
        $(".items-sell__delivery__right__method").remove()
      }
    })



});