App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    console.log(data)
    appendMessage(data.nickname, data.message)
    # Called when there's incoming data on the websocket for this channel

  speak: (nickname, message) ->
    @perform 'speak', nickname: nickname, message: message


$(document).on "submit", "#chat_form", (event) ->
  App.chat.speak $("#nickname_input").val(), $("#chat_input").val()
  event.preventDefault()

