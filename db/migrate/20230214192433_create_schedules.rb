class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|

      t.integer :genre_id, null: false
      t.references :user, null: false, foreign_key: true
      t.references :menu, null: false, foreign_key: true
      t.timestamps
    end
  end
end
