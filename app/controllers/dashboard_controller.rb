class DashboardController < ApplicationController

  def home
  	@guitars = Guitar.includes(:brand).where(search_query('guitars')).references(:brand)
  	@accessories = Accessory.includes(:brand).where(search_query('accessories')).references(:brand)
  end

  def add_shopping_cart_item
  	product = (cart_parameters[:product_type] == 'Guitar' ? Guitar : Accessory).find(cart_parameters[:product_id])
  	if @cart.shopping_cart_items.where(cart_parameters).exists?
  	  shopping_cart_item = @cart.shopping_cart_items.where(cart_parameters).first
  	  shopping_cart_item.quantity+=1
  	  shopping_cart_item.save
  	else
  		@cart.shopping_cart_items.create(cart_parameters.merge({price: product.price}))
  	end
  end

  def clear_cart
  	@cart.shopping_cart_items.delete_all
  end

  private

  def cart_parameters
  	params.permit(:product_id,:product_type)
  end

  def search_query(model_name)
  	query = []
  	query << "brands.name like '%#{params[:brand]}%'" if params[:brand].present?
  	query << "guitar_model like '%#{params[:model]}%'" if params[:model].present? && model_name=='guitars'
  	query << "#{model_name}.name ilike '%#{params[:q]}%'" if params[:q].present?
  	query.join(' and ')
  end
end
