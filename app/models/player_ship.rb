class PlayerShip < ActiveRecord::Base
  belongs_to :captain
  has_one :ship
end
