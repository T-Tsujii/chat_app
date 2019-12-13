class RoomChannel < ApplicationCable::Channel
  def subscribed
    # 配信する部屋名を決定
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
