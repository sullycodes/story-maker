class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.integer :age
      t.integer :story_id
      t.timestamps
    end
  end
end
