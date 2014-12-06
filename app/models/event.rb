class Event < ActiveRecord::Base
  has_many :reservations, dependent: :destroy
end
