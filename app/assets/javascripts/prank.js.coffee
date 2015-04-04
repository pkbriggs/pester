# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(".prank.index").ready ->
  $(".person_phone_number_text").focus ->
    $(".person_phone_number_text").toggleClass("out_of_focus_input")

  $(".person_phone_number_text").blur ->
    $(".person_phone_number_text").toggleClass("out_of_focus_input")
