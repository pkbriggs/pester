module Twit
  def self.get_latest_tweet
    tweet = TWITTER_CLIENT.search("from:KimKardashian").take(1).first
    tweet.text.gsub(/(?:f|ht)tps?:\/[^\s]+/, '')
  end
end
