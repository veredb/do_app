class Task < ActiveRecord::Base
  attr_accessible :title, :user_id
  belongs_to :user
  validates :title, :length => { :minimum => 2, :maximum => 20 } 
  validates :user_id, :length => { :minimum => 1, :maximum => 20 }
end
