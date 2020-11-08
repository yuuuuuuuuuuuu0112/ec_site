class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews, dependent: :destroy
  attachment :profile_image
  has_many :posts,dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :active_relationships, class_name: 'Follow', foreign_key: 'user_id'
  has_many :passive_relationships, class_name: 'Follow', foreign_key: 'target_user_id'
  has_many :followings, through: :active_relationships, source: :target_user
  has_many :followers, through: :passive_relationships, source: :user
  
  validates :username, presence: true, length: { maximum: 10 }
  validates :profile, {length: {maximum: 24}}
  validates :maker_name, {length: {maximum: 12}}


  def already_favorited?(post)
    self.favorites.exists?(post_id: post.id)
  end
  

end
