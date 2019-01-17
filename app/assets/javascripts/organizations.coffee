# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
	$.listen 'parsley:field:error', (ParsleyField) ->
	  pElement = ParsleyField.$element.parent('div').prev().find('p')
	  pElement.css 'color', 'red'

	$('tr[data-href]').click ->
	  window.location = $(this).data('href')
	 