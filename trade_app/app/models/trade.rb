class Trade < ApplicationRecord
  belongs_to :user

 # active storage magic! We writ this to say a trade has images column also, which can have one  or more imag e
  has_many_attached :images, dependent: :destroy
end
