App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    console.log(data)
    appendMessage(data.nickname, data.message)

  speak: (nickname, message) ->
    @perform('speak', {nickname: nickname, message: message})

$(document).on "submit", "#chat_form", (event) ->
  nickname = $("#nickname_input").val()
  message = $("#chat_input").val()
  App.chat.speak(nickname, message) 
  event.preventDefault()
