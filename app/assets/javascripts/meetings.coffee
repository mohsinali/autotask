# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $.listen 'parsley:field:error', (ParsleyField) ->
    pElement = ParsleyField.$element.parent('div').prev().find('p')
    pElement.css 'color', 'red'

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
        console.log("Dynamic organization select OK!")


  el = document.getElementById('meeting_start_time')
  flatpickr el,
    enableTime: true
    altInput: true
    minDate: 'today'
    altFormat: 'F j, Y h:i K'
    dateFormat: 'Y-m-d H:i'
    defaultHour: 23
    defaultMinute: 59
    minuteIncrement: 1
  pl = document.getElementById('meeting_end_time')
  flatpickr pl,
    enableTime: true
    altInput: true
    minDate: 'today'
    altFormat: 'F j, Y h:i K'
    dateFormat: 'Y-m-d H:i'
    defaultHour: 23
    defaultMinute: 59
    minuteIncrement: 1

  $(document).on 'blur', '.meeting', (evt) ->
    past  = moment($('#meeting_start_time').val())
    console.log(past)
    present = moment($('#meeting_end_time').val())
    rate = moment.duration(present.diff(past)).humanize()
    $('#result').html(rate)

     
  
  $(document).on 'click' , '.dial_in', (evt)->
    $(this).next('div').toggle()
  $(document).on 'click' , '.dial_out', (evt)->
    $(this).next('div').toggle()
  

  $('tr[data-href]').click ->
    window.location = $(this).data('href')