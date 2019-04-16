class User < ApplicationRecord
  has_many :sleeps
  validates :name, presence: true, uniqueness: true
  has_many :users_followers
  has_many :followers, through: :users_followers, class_name: "User"
  has_many :followers_users, foreign_key: :follower_id, class_name: "UsersFollower"
  has_many :following_users, through: :followers_users, class_name: "User"

  def self.find_or_create_by_name(name)
    user = User.find_by_name(name)
    if user.present?
      return user
    end

    User.create(name: name)
  end
end
