class Post < ActiveRecord::Base
	attr_accessible :title, :description, :image_url
end
