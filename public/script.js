$(function() {
  $("#submitBtn").click( function(){

    $.ajax({
      type: "POST",
      url: "/food",
      data: "your_form_data"
      success: function(result) {
        // Append the result to a table or list, $("list").append(result)
      },
    });
  });
});
