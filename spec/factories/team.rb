FactoryGirl.define do
	factory :team do
		slack_key { SecureRandom.base64 }
	end
end
