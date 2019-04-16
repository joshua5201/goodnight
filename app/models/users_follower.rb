class UsersFollower < ApplicationRecord
  belongs_to :user
  belongs_to :follower, class_name: "User"
  belongs_to :following_user, class_name: "User", foreign_key: :user_id
end
