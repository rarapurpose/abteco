class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates  :title,      presence: true
  validates  :detail,     presence: true
  validates  :image,      presence: true

  has_many   :comments, dependent: :destroy
  
end
