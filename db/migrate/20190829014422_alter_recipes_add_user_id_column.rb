class AlterRecipesAddUserIdColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :user_id, :integer
    add_index :recipes, :user_id
  end
end
