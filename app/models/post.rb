class Post < ApplicationRecord
  belongs_to :user
  attachment :image
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy

  with_options presence: true do
    validates :body, :title

  end

end
