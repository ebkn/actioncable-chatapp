App.group = App.cable.subscriptions.create "GroupChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#messages').append data['message']

  speak: (message) ->
    @perform 'speak', message: message

$(document).on 'keypress', '[data-behavior~=group_speaker]', (event) ->
    if event.keyCode is 13
      App.group.speak event.target.value
      event.target.value = ''
      event.preventDefault()

