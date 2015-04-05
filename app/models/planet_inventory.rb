class PlanetInventory < ActiveRecord::Base
  belongs_to :planet
  belongs_to :item

  def item_price(a, b) #a = item_id, b = price_modifier
   	i = Item.find(a)
  	return i.base_price * b
  end
end
