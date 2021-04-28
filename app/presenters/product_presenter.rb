class ProductPresenter
  def initialize(product)
    @product = product
  end

  def product_type
  	if @product.product_type.present?
  		return @product.product_type.humanize.titlecase
  	end
  end

  def category
  	if @product.category.present?
  		case @product.category
  		when "clothing" || "footwear"
  			return "Personal Care"
  		when "vegetables" || "fruits" || "food"
  			return "Grocery & Gourmet Foods"
  		when "cosmetics"
  			return "Beauty Essentials"
  		when "medicine"
  			return "Healthcare"
  		end
  	end
  end

end