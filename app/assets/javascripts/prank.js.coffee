# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

initDarkOverlayHandler = ->
  $(".card_dark_overlay").click ->
    overlay = $(this)
    $.get "/prank/new_person", (data, success) ->
      overlay.remove()
      initCardEventHandlers()


initCardEventHandlers = ->
  name_input = $(".name_input:last")
  phone_number_input = $(".person_phone_number_text:last")
  begin_button = $(".begin_button:last")
  new_person_instructions = $(".new_person_instructions:last")
  loading_messages_container = $(".loading_messages_container:last")

  new_person_instructions.fadeIn "fast"

  phone_number_input.focus ->
    $(this).toggleClass("out_of_focus_input")

  phone_number_input.blur ->
    $(this).toggleClass("out_of_focus_input")


  phone_number_input.bind "propertychange change keyup input paste", ->
    if begin_button.hasClass("button_disabled")
      begin_button.removeClass("button_disabled")
      begin_button.one "click", ->
        loading_messages_container.fadeIn "fast"
        # new_person_instructions.fadeOut "fast"#, ->
          # beginPrank(phone_number_input.val())

  initDarkOverlayHandler()


beginPrank = (phone_number) ->
  console.log "Going to prank #{phone_number}"


loadMessages = ->
  $.get "/message/list", (data, status) ->
    return if status != "success" # TODO: Error handling
    console.log "got data: #{data}"


$(".prank.index").ready ->
  initCardEventHandlers()
  loadMessages()


