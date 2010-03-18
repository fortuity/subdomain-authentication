class Admin < ActiveRecord::Base
  # Include default devise modules.
  # Others available are :confirmable, :lockable, :timeoutable and :activatable.
  devise :authenticatable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation
  validates_uniqueness_of :name, :email, :case_sensitive => false
  validates_presence_of :name, :email 
end
