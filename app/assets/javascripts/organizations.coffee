# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
	$.listen 'parsley:field:error', (ParsleyField) ->
	  pElement = ParsleyField.$element.parent('div').prev().find('p')
	  pElement.css 'color', 'red'

	$('tr[data-href]').click ->
	  window.location = $(this).data('href')
	# i = 0
	# $('#addc').click ->
	#     $(this).html i++
	#     return
	#   return
	# $('#rmc').click ->
	# 	 console.log('yes')
	# $('#addc').on 'cocoon:after-insert', (e, insertedItem) ->
 #  		 count++
 #  		 console.log(count)
 	
	

	