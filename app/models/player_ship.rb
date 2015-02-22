class PlayerShip < ActiveRecord::Base
  belongs_to :captain
  belongs_to :ship
end
