class ApplicationController < ActionController::Base
	before_action :load_cart

	private

	def load_cart
	  @cart = current_or_guest_user.shopping_cart.present? ? current_or_guest_user.shopping_cart : current_or_guest_user.create_shopping_cart
	end

	def check_admin
		unless current_or_guest_user.admin?
			redirect_to new_user_session_path
		end
	end

	def after_sign_in_path_for(resource)
		if current_or_guest_user.admin?
			new_guitar_path
		else
			super
		end
  end
end
