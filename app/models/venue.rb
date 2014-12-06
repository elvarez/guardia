class Venue < ActiveRecord::Base

  has_many :seats, dependent: :destroy
  has_many :events

end
