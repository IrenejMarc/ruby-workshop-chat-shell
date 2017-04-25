function appendMessage(user, body) {
  $('<div>')
    .append([$('<b>').text(`${user}: `), body])
    .appendTo($("#chat-body"));
}

function appendSuccess(message) {
  $('<div class="text-success">')
    .text(message)
    .appendTo($("#chat-body"));
}

function appendInfo(message) {
  $('<div class="text-info">')
    .text(message)
    .appendTo($("#chat-body"));
}

function appendError(message) {
  $('<div class="text-danger">')
    .text(message)
    .appendTo($("#chat-body"));
}
