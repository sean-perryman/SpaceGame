class PlanetInventory < ActiveRecord::Base
  belongs_to :planet
  belongs_to :item
end
