document.addEventListener("turbolinks:load", function () {
  var subject = document.getElementById("subject");
  var test = document.getElementById("test_test");

  subject.addEventListener("change", updateTestList);

  // $('#do_test_form').submit(function(e) {
  //   e.preventDefault();
  //   let selectedTestId = $("#test_test").val();
  //   location.href = `/tests/${selectedTestId}`;
  // });

  function updateTestList() {
    $.ajax({
      type: 'get',
      url: "/getListTest?subject_id=" + subject.value,
      dataType: 'json',
      success: function(data) {
        $('#test_test')
          .find('option')
          .remove();
        for (var i = 0; i < data.length; i++) {
          $('#test_test').append(
            $(`<option value=${data[i].id}>${data[i].name}</option>`)
          );
        }
      }
    });
  }

  updateTestList();
});
