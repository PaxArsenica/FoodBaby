require 'sinatra'
require 'yelp'
require 'openssl'
require 'json'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

get '/' do
  erb :baby
end

<<<<<<< HEAD
client = Yelp::Client.new({ consumer_key: 	"Z2VUMVUsbQ6rWNcUqRziiA",
                            consumer_secret: "eJV9557OSLYftsEV2TSGmsja7b0",
                            token: "GtB4sbw8uZmdoOtNW-iESuFnmMWXUyvl",
                            token_secret: "JXwLkigBHKq4QCQrLisk644vly0"
                          })

 hash = {limit: 5, category_filter: 'food'}
locale = { lang:'eng' }

# response = client.search('San Franciso', params, locale)
# puts response.businesses[0].name

# params = {
#   :name => "Sam",
#   :favorite_food => "Green Eggs and Ham"
# }

post '/food' do
     name = params[:name]
     city = params[:city]
     nationality = params[:nationality]
     meal = params[:birth_time]
     stork = params[:stork]
     searchStr = city + " " + name + " " + nationality + " " + meal
     response = client.search(searchStr)
     @business = response.businesses[0].name
     @business_img = response.businesses[0].image_url
     @url = response.businesses[0].url
     @rating_img = response.businesses[0].rating_img_url

     erb :baby
end
=======
# client = Yelp::Client.new({ consumer_key: YOUR_CONSUMER_KEY,
#                             consumer_secret: YOUR_CONSUMER_SECRET,
#                             token: YOUR_TOKEN,
#                             token_secret: YOUR_TOKEN_SECRET
#                           })
>>>>>>> Melat
