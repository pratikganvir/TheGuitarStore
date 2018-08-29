class ShoppingCart < ApplicationRecord
	has_many :shopping_cart_items

	def total
		shopping_cart_items.map(&:subtotal).sum.to_f.round(2)
	end
end
