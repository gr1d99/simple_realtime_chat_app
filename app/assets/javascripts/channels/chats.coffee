App.chats = App.cable.subscriptions.create "ChatsChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    console.log("connected")

  disconnected: ->
    # Called when the subscription has been terminated by the server
    console.log("disconnected")

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    console.log(data)
    @appendMessage(data["message"])

  appendMessage: (message) ->
    $("div#messages").append(
      "<div class='card mt-2 bg-success pull-right'>
         <div class='card-body'>
           #{message}
         </div>
       </div>"
    )
