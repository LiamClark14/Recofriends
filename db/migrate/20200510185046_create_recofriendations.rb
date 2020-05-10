class CreateRecofriendations < ActiveRecord::Migration[6.0]
  def change
    create_table :recofriendations do |t|
      t.string :recofriendation

      t.timestamps
    end
  end
end
