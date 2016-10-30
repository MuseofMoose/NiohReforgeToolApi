class Team < ActiveRecord::Base
	validates :slack_key, uniqueness: true
end
