class Product < ActiveRecord::Base
	enum product_type: {
	    essential: "essential",
	    non_essential: "non_essential"
	}
	enum category: {
	    food: "food",
	    medicine: "medicine",
	    clothing: "clothing",
	    cosmetics: "cosmetics",
	    footwear: "footwear",
	    vegetables: "vegetables",
	    fruits: "fruits"
	}
end
