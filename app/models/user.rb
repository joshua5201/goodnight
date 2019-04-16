class User < ApplicationRecord
  has_many :sleeps
  validates :name, presence: true, uniqueness: true

  def self.find_or_create_by_name(name)
    user = User.find_by_name(name)
    if user.present?
      return user
    end

    User.create(name: name)
  end
end
