class MarketChannel < ApplicationCable::Channel


  def subscribed
    user = 0
    # current_user,
    puts('-'*90)
    puts 'User Subscribed'
    puts('-'*90)

    stream_from 'market_channel'
  end


end
