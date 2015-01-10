class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :sentence, null: false
      t.integer :category_id, null: false

      t.timestamps
    end
    add_index(:stories, :sentence, unique:true)
  end
end
