class CreateUsersFollowers < ActiveRecord::Migration[5.2]
  def change
    create_table :users_followers do |t|
      t.integer :user_id
      t.integer :follower_id

      t.timestamps
    end
  end
end
