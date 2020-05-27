class AddUserIdToRecofriendations < ActiveRecord::Migration[6.0]
  def change
    add_column :recofriendations, :user_id, :integer
  end
end
