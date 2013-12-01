require 'httpclient'
require 'json'

api_key = ENV['COINBASE_API_KEY']
client = HTTPClient.new

bal_str = client.get_content("https://coinbase.com/api/v1/account/balance?api_key=#{api_key}")
bal = JSON.parse(bal_str)['amount'].to_f


sell_price_str = client.get_content("https://coinbase.com/api/v1/prices/sell?qty=#{bal}")
sell_price = JSON.parse(sell_price_str)['amount']

puts "Current balance: #{bal} BTC"
puts "Current value: #{sell_price} USD"
