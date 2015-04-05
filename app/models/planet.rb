class Planet < ActiveRecord::Base
	belongs_to :world
	belongs_to :captain

	has_many :planet_inventories
end
