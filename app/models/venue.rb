class Venue < ActiveRecord::Base

  has_many :seats, dependent: :destroy

end
