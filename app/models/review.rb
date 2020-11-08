class Review < ApplicationRecord
  belongs_to :user
  belongs_to :house_maker
  validates :score,:content, presence: true, length: { maximum: 150 }
end
