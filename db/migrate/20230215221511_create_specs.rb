class CreateSpecs < ActiveRecord::Migration[6.0]
  def change
    create_table :specs do |t|

      t.integer :user_calorie, null:false
      t.integer :user_protein, null: false
      t.integer :user_suger, null: false
      t.integer :user_lipid, null: false
      t.references :user, null: false, foreign_key: true
      t.integer    :heigth_id, null: false
      t.integer    :gender_id, null: false
      t.integer    :age_id, null: false
      t.integer    :active_level_id, null: false
      t.timestamps
    end
  end
end
