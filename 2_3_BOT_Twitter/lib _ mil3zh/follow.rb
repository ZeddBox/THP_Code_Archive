require 'twitter'
require 'dotenv'
require 'pry'

Dotenv.load

client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
    config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
    config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
    config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

client.search("#bonjour_monde",result_type:"recent").take(25).each { |tweet|
  puts "New Tweet!" if tweet.is_a?(Twitter::Tweet)
  puts "#{tweet.text}"
  client.follow(tweet.user)
  puts "Follow: done!"
}
