class Captain < ActiveRecord::Base
  belongs_to :user

  belongs_to :world
  #has_one :cartel
  has_one :ship
end
