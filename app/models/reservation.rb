class Reservation < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  belongs_to :order
end
