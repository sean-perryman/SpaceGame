class Ship < ActiveRecord::Base
	has_many :player_ships
end