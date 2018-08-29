class ApplicationController < ActionController::Base
	before_action :load_cart

	private

	def load_cart
	  @cart = current_or_guest_user.shopping_cart.present? ? current_or_guest_user.shopping_cart : current_or_guest_user.create_shopping_cart
	end
end
