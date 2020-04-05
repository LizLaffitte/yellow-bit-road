class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.string :difficulty
      t.string :source_url
      t.boolean :completed, :default => false
      t.integer :language_id
      t.timestamps
    end
  end
end
