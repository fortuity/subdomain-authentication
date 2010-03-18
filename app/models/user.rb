class User < ActiveRecord::Base
	has_many :subdomains, :dependent => :destroy
	has_friendly_id :name
  # Include default devise modules.
  # Others available are :lockable, :timeoutable and :activatable.
  devise :authenticatable, :confirmable, :recoverable, :registerable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation
  validates_uniqueness_of :name, :email, :case_sensitive => false
  validates_presence_of :name, :email
end
