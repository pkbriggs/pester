class Victim < ActiveRecord::Base
  phony_normalize :phone_number, default_country_code: "US"
  validates :phone_number, presence: true, phony_plausible: true
end
