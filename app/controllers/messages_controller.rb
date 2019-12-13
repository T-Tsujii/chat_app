class MessagesController < ApplicationController
  def create
    @message = current_user.messages.create!(message_params)
    # 投稿されたメッセージをチャット参加者に配信
    ActionCable.server.broadcast 'room_channel', message: @message.template
  end

  private
  def message_params
    params.require(:message).permit(:content)
  end
end