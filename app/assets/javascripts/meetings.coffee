# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $(document).on 'change', '#organizations_select', (evt) ->
    $.ajax 'update_contacts',
      type: 'GET'
      dataType: 'script'
      data: {
        organization_id: $("#organizations_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic country select OK!")

   $('#datepicker').datepicker()
   return

   $('#start_time_picker').datetimepicker locale: 'ru'
   alert 'ayesha'
   return
   present  = moment($('#start_time_start_time').val())

   $(document).on 'change', '#time_select', (evt) ->
      past = moment($('#end_time_end_time').val())
      output = Math.floor(moment.duration(moment(present,"YYYYMMDDTHHmmss").diff(moment(past,"YYYYMMDDTHHmmss"))).asHours())+moment.utc(moment(present,"YYYYMMDDTHHmmss").diff(moment(past,"YYYYMMDDTHHmmss"))).format(":mm:ss");
      $('#result').html(output);
      alert output