require 'twitter'
require 'dotenv'
require 'twilio-ruby'

Dotenv.load

TARGET="+16503957280"

twitter_client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_SECRET"]
end

TWILIO_CLIENT = Twilio::REST::Client.new(
  ENV["TWILIO_ACCOUNT_SID"], 
  ENV["TWILIO_AUTH_TOKEN"]
)

def send_sms(text)
  TWILIO_CLIENT.account.messages.create(
    :from => "+16503004228",
#    :from => "+15005550006",
#    :to => "+16503957280",
    :to => TARGET,
    :body => text
  )
end

twitter_client.search("from:KimKardashian").take(1).each do |tweet|
  no_url = tweet.text.gsub(/(?:f|ht)tps?:\/[^\s]+/, '')
  puts no_url
  send_sms(no_url)
end

