FactoryBot.define do
	  factory :user do
    sequence(:email) { |n| 'test#{n}@example.com' }
    password {"12345678"}
    is_admin {false}
  end

  factory :admin, class: User do
  	sequence(:email) { |n| 'admin#{n}@example.com' }
    password {"12345678"}
    is_admin {true}
  end

  factory :product do
  	name {"N95 Mask"}
  	price {"200"}
  	description {"Most comfortable and resuable"}
  	product_type {"essential"}
  	available {true}
  	category {"medicine"}
  end

end