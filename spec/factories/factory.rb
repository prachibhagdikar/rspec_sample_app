FactoryGirl.define do
  factory :user do

    email "test@test.com"
    password "12345678"
    is_admin false

    trait :admin do
	    after(:build) do |user|
	      user.is_admin = true
	      user.email = "admin@admin.com"
	    end
	  end
  end
end