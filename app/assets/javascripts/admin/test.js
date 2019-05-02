$("#test_subject").change(function () {
    var selectedValue = $(this).val();
    $("#test_subject_id").val($(this).find("option:selected").attr("value"))
});
