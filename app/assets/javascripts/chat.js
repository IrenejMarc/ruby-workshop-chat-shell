function appendMessage(user, body) {
  $('<div>')
    .append([$('<b>').text(`${user}: `), body])
    .appendTo($("#chat-body"));
}
