class Post < ActiveRecord::Base
  attr_accessible :description, :user_id
end
