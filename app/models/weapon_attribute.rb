class WeaponAttribute < ActiveRecord::Base
	#Overriding as_json in order to exclude params by default.
	def as_json(options={})
	 options[:except] ||= [:active, :updated_at, :created_at]
	 super(options)
	end

end
