class CreateStoryParts < ActiveRecord::Migration
  def change
    create_table :story_parts do |t|
      t.string :piece, null: false
      t.integer :category_id, null: false
      t.integer :part_type_id, null: false
    end
  end
end
