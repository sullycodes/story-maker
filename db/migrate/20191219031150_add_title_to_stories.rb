class AddTitleToStories < ActiveRecord::Migration[6.0]
  def change
    add_column :stories, :title, :string
  end
end
