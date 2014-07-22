require 'twitter'
require 'dotenv'
require 'twilio-ruby'

# Load environment variables from .env
Dotenv.load

# Globals
MODE="TEST"

# Local files
require './phone'
require './twit'

tweet = Twit.get_latest_tweet
puts "KEEPING UP WITH KIM: #{tweet}"
#send_sms(no_url)


