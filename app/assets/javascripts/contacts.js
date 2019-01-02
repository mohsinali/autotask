$(function() {

   if ($("select#organization").val() == "") {
    $("select#contacts option").remove();
    var row = "<option value=\"" + "" + "\">" + "contacts" + "</option>";
    $(row).appendTo("select#contacts");
   }
   $("select#organization").change(function() {
    var id_value_string = $(this).val();
    if (id_value_string == "") {
     $("select#contacts option").remove();
     var row = "<option value=\"" + "" + "\">" + "contacts" + "</option>";
     $(row).appendTo("select#contacts");
    } else {
     // Send the request and update contacts dropdown
     $.ajax({
      dataType: "json",
      cache: false,
      url: '/get_contactss_by_organization/' + id_value_string,
      timeout: 5000,
      error: function(XMLHttpRequest, errorTextStatus, error) {
       alert("Failed to submit : " + errorTextStatus + " ;" + error);
      },
       success: function(data) {
       // Clear all options from contacts select
       $("select#contacts option").remove();
       //put in a empty default line
       var row = "<option value=\"" + "" + "\">" + "contacts" + "</option>";
       $(row).appendTo("select#contacts");
       // Fill contacts select
       $.each(data, function(i, j) {
        row = "<option value=\"" + j.id + "\">" + j.title + "</option>";
        $(row).appendTo("select#contacts");
       });
      }
     });
    }
   });

  });