class Captain < ActiveRecord::Base
  belongs_to :user

  has_one :world
  has_one :cartel
  has_one :ship
end
