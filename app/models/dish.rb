class Dish < ApplicationRecord
  belongs_to :course	
  mount_uploader :image, ImageUploader	
end
