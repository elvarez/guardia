class Order < ActiveRecord::Base
  has_many :reservations, dependent: :destroy
end
 