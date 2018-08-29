class Accessory < ApplicationRecord
	mount_uploader :accessory_image, AccessoryImageUploader
	belongs_to :brand
	belongs_to :accessory_type
	has_many :shopping_cart_items, as: :product
	attr_accessor :serial_number

	def image
		self.accessory_image
	end

	def title
		"#{name} - #{brand.name} - #{accessory_type.name}"
	end
end
