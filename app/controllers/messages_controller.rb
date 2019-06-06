class MessagesController < ApplicationController
  def create
    ActionCable.server.broadcast("ChatsChannel", message: message_params[:message])
  end

  private

  def message_params
    params.permit(:message)
  end
end
