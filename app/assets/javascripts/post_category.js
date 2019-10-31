$(document).on('turbolinks:load',function(){
  
  var add_box = $(".items-sell__details__right__category");
  var add_size = $(".items-sell__details__right__category");
  
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
          <select class="items-sell__details__right__size__frame__main" id="size-form">
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
        <div class="items-sell__details__right__brand__frame">
          <input class="items-sell__details__right__brand__frame__main" placeholder="例）シャネル">
        </div>
      </div>`
    add_size.after(html)
  }


  function appendCat(catOption,catNum){
    if(catNum == 1) {
      var appendId = $("#child-form")
    } else if (catNum == 2){
      var appendId = $("#granchild-form")
    } else if (catNum == 3){
      var appendId = $("#size-form")
    }
    appendId.append(
      $("<option>")
        .val($(catOption).attr('id'))
        .text($(catOption).attr('name'))
        .text($(catOption).attr('size'))
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
  



});