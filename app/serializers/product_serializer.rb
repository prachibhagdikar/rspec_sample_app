class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :category, :available, :description
  attribute :product_type do |object|
    presenter = ProductPresenter.new(object)	
	presenter.product_type
  end

  attribute :category do |object|
    presenter = ProductPresenter.new(object)	
	presenter.category
  end
end