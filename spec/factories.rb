FactoryGirl.define do
	factory :client do
		first_name "John"
		last_name  "Doe"
	end
	
    factory :admin do
	    sequence(:email) { |n| "abc#{n}@abc.com" }
	    password "foobar"
	    password_confirmation {|u| u.password}
  	end
end