class Post < ApplicationRecord
  belongs_to :user
  attachment :image
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { maximum: 20 }
  validates :body, presence: true, length: { maximum: 100 }
  with_options presence: true do
    validates :body, :title

  end

end
