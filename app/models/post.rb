class Post < ActiveRecord::Base
  attr_accessible :description, :avatar, :title, :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
 
  belongs_to :user
  
  validates_presence_of :description
end
