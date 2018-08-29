class Guitar < ApplicationRecord
	mount_uploader :guitar_image, GuitarImageUploader
	enum guitar_type: [:accoustic,:electric]
	belongs_to :brand
	has_many :shopping_cart_items, as: :product

	def image
		self.guitar_image
	end

	def title
		"#{name} - #{brand.name} - #{model_name}"
	end
end
