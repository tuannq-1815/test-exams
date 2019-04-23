$(document).on("turbolinks:load", function(){
  var subject = $("#subject");
  var test = $("#test_test");
  $(subject).on("change", function(){
    $.ajax({
      type: "get",
      url: "/getListTest?subject_id=" + $("#subject").val(),
      dataType: "json",
      success: function(data){
          test.find("option")
          .remove()
        for (var i = 0; i < data.length; i++) {
          $("#test_test").append(
            $("<option 'value'= "+data[i].id+">"+data[i].name+"</option>"));
        }
      }
    });
  })
})
