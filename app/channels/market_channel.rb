class MarketChannel < ApplicationCable::Channel


  def subscribed
    user = 0
    # current_user,
    puts('-'*90)
    puts 'User subscribed'
    puts('-'*90)

    stream_from 'market_channel'
  end

  def unsubscribed
    puts('x'*90)
    puts 'User unsubscribed'
    puts('x'*90)
  end


end
