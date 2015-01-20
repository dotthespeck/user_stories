class AddVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer "story_id", null: false
      t.integer "user_id", null: false

      t.timestamps
    end
    add_index :votes, [:story_id, :user_id], unique: true
  end
end
