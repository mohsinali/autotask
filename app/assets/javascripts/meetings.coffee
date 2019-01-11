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


  

  $(document).on 'blur', '.meeting', (evt) ->
    console.log('sdfsdf')
    past  = moment($('#meeting_start_time').val())
    present = moment($('#meeting_end_time').val())
    console.log(past)
    console.log(present)
    rate = moment.duration(present.diff(past)).humanize()
    $('#result').html(rate)
    console.log(rate)

  $('.datetimepicker1').datetimepicker()
  return
  
