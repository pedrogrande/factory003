class Post < ActiveRecord::Base
  attr_accessible :content, :image, :slug, :title, :icon, :lead
end
