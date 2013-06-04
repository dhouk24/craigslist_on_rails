class User < ActiveRecord::Base
  attr_accessible :username, :password
  has_many :posts
  has_many :categories


end
