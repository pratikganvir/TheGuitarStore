class ShoppingCartItem < ApplicationRecord
	belongs_to :shopping_cart
	belongs_to :product, polymorphic: true

	def subtotal
		(quantity*price).to_f.round(2)
	end
end
