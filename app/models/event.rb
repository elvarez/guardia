class Event < ActiveRecord::Base

  has_many :reservations, dependent: :destroy
  has_many :seats, dependent: :destroy
  belongs_to :venue
  
end
