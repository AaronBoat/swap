class Cart < ActiveRecord::Base
	has_many :accessory_items, dependent: :destroy
end
