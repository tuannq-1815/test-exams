document.addEventListener("turbolinks:load", function(){
  var subject = document.getElementById("subject");
  var test = document.getElementById("test");

  subject.addEventListener("change", function(){
    $.ajax({
      type: 'get',
      url: "/getListTest?subject_id=" + subject.value,
      dataType: 'json',
      success: function(data){
        $('#test_test')
          .find('option')
          .remove()
        for (var i = 0; i < data.length; i++) {
          $('#test_test').append(
            $("<option 'value'= "+data[i].id+">"+data[i].name+"</option>"));
        }
      }
    });
  })
})
