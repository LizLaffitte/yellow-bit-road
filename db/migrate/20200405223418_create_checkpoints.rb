class CreateCheckpoints < ActiveRecord::Migration[6.0]
  def change
    create_table :checkpoints do |t|
      t.integer :order
      t.date :goal_date
      t.boolean :completed, :default => false
      t.integer :course_id
      t.integer :path_id
      t.timestamps
    end
  end
end
