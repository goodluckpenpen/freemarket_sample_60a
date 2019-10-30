$(document).on('turbolinks:load',function(){
  function buildHTML(child){

    var html = `<div class="items-sell__details__right__category__frame">
                    <i>
                      <i class="fa fa-angle-down fa-2x"></i>
                    </i>
                    <select class="items-sell__details__right__category__frame__main" id="parent-form" name="item[category_ids][]">
                      <option value="">---</option>
                    //$.each(${child}), function(value) {
                      <option value="value">value</option>
                        console.log(this);
                     
                    })
                      
                    
                  </div>`
                console.log(child.name)
  return html;
  }

  $("#parent-form").on("change",function(){
    var parentValue = document.getElementById("parent-form").value;
    //  ("parent-form")は親ボックスのid属性
    $.ajax({
      url: '/items/search',
      type: "GET",
      data: {
        parent_id: parentValue // 親ボックスの値をparent_idという変数にする。
      },
      dataType: 'json'
    })
    .done(function(data){
      var html = buildHTML(data)
      $('.items-sell__details__right__category').append(html)
    })
  });
});