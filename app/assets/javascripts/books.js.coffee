# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


# mixitup call on books#index page

$ -> 
  $('#Grid').mixitup()

  
# tabs on show page

$('#excerpt a').click (e) ->
  e.preventDefault()
  $(this).tab "show"


$("#bio a").click (e) ->
  e.preventDefault()
  $(this).tab "show"

$("#context a").click (e) ->
  e.preventDefault()
  $(this).tab "show"
