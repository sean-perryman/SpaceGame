class Planet < ActiveRecord::Base
	belongs_to :world
	belongs_to :captain
end
