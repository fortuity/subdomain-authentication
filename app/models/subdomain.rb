class Subdomain < ActiveRecord::Base
  belongs_to :user
	has_friendly_id :name
	def to_param
		name
  end
end