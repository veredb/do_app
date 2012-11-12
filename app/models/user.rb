class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :tasks
  validates :name, :length => { :minimum => 2, :maximum => 25 }
  validates :email, :length => { :minimum => 5, :maximum => 30 }
end
