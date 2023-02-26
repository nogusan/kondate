class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :name, null: false
      t.integer :calorie, null: false
      t.integer :protein, null: false
      t.integer :sugar, null: false
      t.integer :lipid, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
