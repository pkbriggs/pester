class Victim < ActiveRecord::Base
  phony_normalize :phone_number, default_country_code: 'US'
  validates :phone_number, presence: true, phony_plausible: true

  include Phone
  include Twttr

  def send_latest_tweet
    tweet_text = get_latest_tweet()
    tweet_prefix = get_random_message_prefix()
    text = "#{tweet_prefix} #{tweet_text}"

    send_sms(phone_number, text)
  end

  def send_intro
    if !seen_intro
      text = get_intro_text()
      send_sms(phone_number, text)
      self.seen_intro = true
      self.save
    end
  end

end
