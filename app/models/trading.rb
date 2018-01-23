require 'singleton'
require 'net/http'
require 'json'
require 'open-uri'

class Trading
  include Singleton

  def initialize()

  end

  def publish
    response = open('https://api.iextrading.com/1.0/stock/aapl/quote').read



    sample_data = {"company": "AAPL", "size": "medium"}
    # Broadcasting data received from api call above to market channel
    # Function broadcast, [channel name], [data in json form], [status code]
    ActionCable.server.broadcast 'market_channel',
      top_gainers: JSON.parse(response)

  end
end
