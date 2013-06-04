class Post < ActiveRecord::Base
  attr_accessible :title, :category_id, :price, :description, :email, :edit_key, :user_id

  belongs_to :category
  belongs_to :user

end
