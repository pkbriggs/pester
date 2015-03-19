if Rails.env.production?
  TWILIO_CLIENT = Twilio::REST::Client.new(
    ENV["TWILIO_ACCOUNT_SID"],
    ENV["TWILIO_AUTH_TOKEN"]
  )
  TWILIO_FROM_PHONE_NUMBER = ENV["TWILIO_SOURCE_NUMBER"]
else
  TWILIO_CLIENT = Twilio::REST::Client.new(
    ENV["TWILIO_ACCOUNT_SID_TEST"],
    ENV["TWILIO_AUTH_TOKEN_TEST"]
  )
  TWILIO_FROM_PHONE_NUMBER = ENV["TWILIO_SOURCE_NUMBER_TEST"]
end

# SOURCE_PHONE_NUMBER = ENV["TWILIO_SOURCE_NUMBER"] if MODE == "TEST"
# SOURCE_PHONE_NUMBER = ENV["TWILIO_SOURCE_NUMBER_TEST"] if MODE == "LIVE"
# TARGET_PHONE_NUMBER = ENV["PAT_CELL"]