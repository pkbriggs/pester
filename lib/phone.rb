module Phone
  MESSAGE_PREFIXES = [
    "KIM UPDATE: ",
    "THE LATEST FROM KIM: ",
    "BREAKING NEWS FROM KIM: ",
    "IMPORTANT KIM NEWS: ",
    "YOUR KIM UPDATE: ",
    "YOUR KIM NEWS: "
  ]

  INTRO_TEXT = "Thanks for signing up for KEEPING UP WITH KIM KARDASHIAN. You will now receive the latest news and Twitter updates from Kim."

  def send_sms(phone_number, text)
    puts "Sending SMS: #{text}"
    TWILIO_CLIENT.account.messages.create(
      :from => TWILIO_FROM_PHONE_NUMBER,
      :to => phone_number,
      :body => text
    )
  end

  def get_random_message_prefix
    MESSAGE_PREFIXES.sample # returns a random string from the MESSAGE_PREFIXES array
  end

  def get_intro_text
    INTRO_TEXT
  end

end