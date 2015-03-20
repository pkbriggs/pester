module Phone
  MESSAGE_PREFIXES = [
    "KIM UPDATE: ",
    "THE LATEST FROM KIM: ",
    "BREAKING NEWS FROM KIM: ",
    "IMPORTANT KIM NEWS: ",
    "YOUR KIM UPDATE: ",
    "YOUR KIM NEWS: "
  ]

  RANDOM_FACTS = [
    "Fact: Kim attended an all-girl Catholic high school where she performed over 100 hours of community service.",
    "Fact: Kim celebrated her 14th birthday party at Michael Jackson's Neverland Ranch.",
    "Fact: Kim first got married at age 19 to a musician named Damon Thomas",
    "Fact: Kim went to pre-school with Paris Hilton.",
    "Fact: Before she became famous, Kim was a stylist for Lindsay Lohan.",
    "Fact: Kim claims her deceased father regularly contacts her through her dreams",
    "Fact: Kim was nominated as the Worst Supporting Actress in the 2009 Razzie Awards.",
    "Fact: Kim's favorite junk food is deep fried Oreos."
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