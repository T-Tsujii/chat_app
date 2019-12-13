class RoomsController < ApplicationController
  def show
    # 投稿一覧表示に利用
    @messages = Message.includes(:user).order(:id)
    # メッセージ投稿に利用
    @message = current_user.messages.build
  end
end
