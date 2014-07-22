module Phone
  TWILIO_CLIENT = Twilio::REST::Client.new(
    ENV["TWILIO_ACCOUNT_SID"], 
    ENV["TWILIO_AUTH_TOKEN"]
  )
  SOURCE = ENV["TWILIO_SOURCE_NUMBER"] if MODE == "TEST"
  SOURCE = ENV["TWILIO_SOURCE_NUMBER_TEST"] if MODE == "LIVE"
  TARGET = ENV["PAT_CELL"]

  def send_sms(text)
    TWILIO_CLIENT.account.messages.create(
      :from => SOURCE,
      :to => TARGET,
      :body => text
    )
  end
end
