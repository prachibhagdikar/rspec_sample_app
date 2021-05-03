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

	PRODUCT_CATEGORY = {"Personal Care": ["clothing","footwear"], 
		"Grocery & Gourmet Foods": ["vegetables","food","fruits"], 
		"Beauty Essentials": ["cosmetics"], 
		"Healthcare": ["medicine"]
	}
	validates_presence_of :product_type
	validates_presence_of :name
	validates_presence_of :price
end
