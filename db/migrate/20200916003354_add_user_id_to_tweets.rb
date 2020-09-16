class AddUserIdToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :twitters, :user_id, :integer
  end
end
