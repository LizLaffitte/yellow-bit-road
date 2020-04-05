class CreatePaths < ActiveRecord::Migration[6.0]
  def change
    create_table :paths do |t|
      t.string :name
      t.boolean :public, :default=> false
      t.date :goal_date
      t.integer :user_id
      t.integer :language_id
      t.timestamps
    end
  end
end
