class CreateRecipeQueries < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_queries do |t|

      t.timestamps
    end
  end
end
