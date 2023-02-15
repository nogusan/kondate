class CreateSpecs < ActiveRecord::Migration[6.0]
  def change
    create_table :specs do |t|

      t.integer :user_calorie
      t.integer :user_protein
      t.integer :user_suger
      t.integer :user_lipid
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
