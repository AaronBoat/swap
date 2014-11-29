class AccessoryItem < ActiveRecord::Base
	belongs_to :cart
	belongs_to :accessory
end
