class Course < ApplicationRecord

  has_many :dishes, dependent: :destroy
  
end
