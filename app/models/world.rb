class World < ActiveRecord::Base
	has_many :captains
	has_many :planets
end