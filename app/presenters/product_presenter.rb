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
  		key_in_a_hash(@product.category,Product::PRODUCT_CATEGORY)
  	end
  end

  def key_in_a_hash(key,hashes)
  	return hashes.find { |k, v|
		  v.include?(key)
		}.first.to_s
  end

end