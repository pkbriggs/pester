module Twit
  TWITTER_CLIENT = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
    config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
    config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
    config.access_token_secret = ENV["TWITTER_ACCESS_SECRET"]
  end

  def self.get_latest_tweet
    tweet = TWITTER_CLIENT.search("from:KimKardashian").take(1).first
    tweet.text.gsub(/(?:f|ht)tps?:\/[^\s]+/, '')
  end
end
