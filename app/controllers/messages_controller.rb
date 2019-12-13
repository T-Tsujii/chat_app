class MessagesController < ApplicationController
  def create
    @message = current_user.messages.create!(message_params)
  end

  private
  def message_params
    params.require(:message).permit(:content)
  end
end