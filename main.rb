require 'sinatra'
require 'yelp'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

get '/' do
  erb :main
end

client = Yelp::Client.new({ consumer_key: 	"Z2VUMVUsbQ6rWNcUqRziiA",
                            consumer_secret: "eJV9557OSLYftsEV2TSGmsja7b0",
                            token: "GtB4sbw8uZmdoOtNW-iESuFnmMWXUyvl",
                            token_secret: "JXwLkigBHKq4QCQrLisk644vly0"
                          })

# params = { term: 'food', limit: 3, category_filter: 'discgolf'}
locale = { lang:'eng' }

# response = client.search('San Franciso', params, locale)
# puts response.businesses[0].name

# params = {
#   :name => "Sam",
#   :favorite_food => "Green Eggs and Ham"
# }

post '/food' do
     "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
end
