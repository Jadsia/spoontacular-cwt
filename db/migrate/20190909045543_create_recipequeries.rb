class CreateRecipequeries < ActiveRecord::Migration[5.2]
  def change
    create_table :recipequeries do |t|

      t.timestamps
    end
  end
end
