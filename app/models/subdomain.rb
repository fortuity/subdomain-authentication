class Subdomain < ActiveRecord::Base
  belongs_to :user
  has_friendly_id :name
  validates_uniqueness_of :name, :case_sensitive => false
  validates_presence_of :name
  def to_param
    name
  end
end